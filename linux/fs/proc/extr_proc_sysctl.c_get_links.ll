; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_get_links.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_get_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_dir = type { i32 }
%struct.ctl_table = type { i8*, %struct.ctl_table_root*, i32 }
%struct.ctl_table_root = type { i32 }
%struct.ctl_table_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_dir*, %struct.ctl_table*, %struct.ctl_table_root*)* @get_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_links(%struct.ctl_dir* %0, %struct.ctl_table* %1, %struct.ctl_table_root* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_dir*, align 8
  %6 = alloca %struct.ctl_table*, align 8
  %7 = alloca %struct.ctl_table_root*, align 8
  %8 = alloca %struct.ctl_table_header*, align 8
  %9 = alloca %struct.ctl_table*, align 8
  %10 = alloca %struct.ctl_table*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.ctl_dir* %0, %struct.ctl_dir** %5, align 8
  store %struct.ctl_table* %1, %struct.ctl_table** %6, align 8
  store %struct.ctl_table_root* %2, %struct.ctl_table_root** %7, align 8
  %13 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  store %struct.ctl_table* %13, %struct.ctl_table** %9, align 8
  br label %14

14:                                               ; preds = %58, %3
  %15 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %16 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %61

19:                                               ; preds = %14
  %20 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %21 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %11, align 8
  %23 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @strlen(i8* %25)
  %27 = call %struct.ctl_table* @find_entry(%struct.ctl_table_header** %8, %struct.ctl_dir* %23, i8* %24, i32 %26)
  store %struct.ctl_table* %27, %struct.ctl_table** %10, align 8
  %28 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  %29 = icmp ne %struct.ctl_table* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %85

31:                                               ; preds = %19
  %32 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  %33 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i64 @S_ISDIR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %31
  %38 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %39 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @S_ISDIR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %58

44:                                               ; preds = %37, %31
  %45 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  %46 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @S_ISLNK(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load %struct.ctl_table*, %struct.ctl_table** %10, align 8
  %52 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %51, i32 0, i32 1
  %53 = load %struct.ctl_table_root*, %struct.ctl_table_root** %52, align 8
  %54 = load %struct.ctl_table_root*, %struct.ctl_table_root** %7, align 8
  %55 = icmp eq %struct.ctl_table_root* %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %58

57:                                               ; preds = %50, %44
  store i32 0, i32* %4, align 4
  br label %85

58:                                               ; preds = %56, %43
  %59 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %60 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %59, i32 1
  store %struct.ctl_table* %60, %struct.ctl_table** %9, align 8
  br label %14

61:                                               ; preds = %14
  %62 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  store %struct.ctl_table* %62, %struct.ctl_table** %9, align 8
  br label %63

63:                                               ; preds = %81, %61
  %64 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %65 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %84

68:                                               ; preds = %63
  %69 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %70 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %12, align 8
  %72 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @strlen(i8* %74)
  %76 = call %struct.ctl_table* @find_entry(%struct.ctl_table_header** %8, %struct.ctl_dir* %72, i8* %73, i32 %75)
  store %struct.ctl_table* %76, %struct.ctl_table** %10, align 8
  %77 = load %struct.ctl_table_header*, %struct.ctl_table_header** %8, align 8
  %78 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %68
  %82 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %83 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %82, i32 1
  store %struct.ctl_table* %83, %struct.ctl_table** %9, align 8
  br label %63

84:                                               ; preds = %63
  store i32 1, i32* %4, align 4
  br label %85

85:                                               ; preds = %84, %57, %30
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.ctl_table* @find_entry(%struct.ctl_table_header**, %struct.ctl_dir*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
