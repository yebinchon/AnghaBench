; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_put_links.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_put_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ctl_table_set }
%struct.ctl_table_set = type { i32 }
%struct.ctl_table_header = type { %struct.ctl_table*, %struct.ctl_table_set*, %struct.ctl_dir*, %struct.ctl_table_root* }
%struct.ctl_table = type { i8*, %struct.ctl_table_root*, i32 }
%struct.ctl_dir = type { i32 }
%struct.ctl_table_root = type { i32 }

@sysctl_table_root = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [40 x i8] c"sysctl link missing during unregister: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"/%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_table_header*)* @put_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_links(%struct.ctl_table_header* %0) #0 {
  %2 = alloca %struct.ctl_table_header*, align 8
  %3 = alloca %struct.ctl_table_set*, align 8
  %4 = alloca %struct.ctl_table_root*, align 8
  %5 = alloca %struct.ctl_dir*, align 8
  %6 = alloca %struct.ctl_dir*, align 8
  %7 = alloca %struct.ctl_table*, align 8
  %8 = alloca %struct.ctl_table_header*, align 8
  %9 = alloca %struct.ctl_table*, align 8
  %10 = alloca i8*, align 8
  store %struct.ctl_table_header* %0, %struct.ctl_table_header** %2, align 8
  store %struct.ctl_table_set* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysctl_table_root, i32 0, i32 0), %struct.ctl_table_set** %3, align 8
  %11 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %12 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %11, i32 0, i32 3
  %13 = load %struct.ctl_table_root*, %struct.ctl_table_root** %12, align 8
  store %struct.ctl_table_root* %13, %struct.ctl_table_root** %4, align 8
  %14 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %15 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %14, i32 0, i32 2
  %16 = load %struct.ctl_dir*, %struct.ctl_dir** %15, align 8
  store %struct.ctl_dir* %16, %struct.ctl_dir** %5, align 8
  %17 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %18 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %17, i32 0, i32 1
  %19 = load %struct.ctl_table_set*, %struct.ctl_table_set** %18, align 8
  %20 = load %struct.ctl_table_set*, %struct.ctl_table_set** %3, align 8
  %21 = icmp eq %struct.ctl_table_set* %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %88

23:                                               ; preds = %1
  %24 = load %struct.ctl_table_set*, %struct.ctl_table_set** %3, align 8
  %25 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %26 = call %struct.ctl_dir* @xlate_dir(%struct.ctl_table_set* %24, %struct.ctl_dir* %25)
  store %struct.ctl_dir* %26, %struct.ctl_dir** %6, align 8
  %27 = load %struct.ctl_dir*, %struct.ctl_dir** %6, align 8
  %28 = call i64 @IS_ERR(%struct.ctl_dir* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %88

31:                                               ; preds = %23
  %32 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  %33 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %32, i32 0, i32 0
  %34 = load %struct.ctl_table*, %struct.ctl_table** %33, align 8
  store %struct.ctl_table* %34, %struct.ctl_table** %7, align 8
  br label %35

35:                                               ; preds = %85, %31
  %36 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %37 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %88

40:                                               ; preds = %35
  %41 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %42 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %10, align 8
  %44 = load %struct.ctl_dir*, %struct.ctl_dir** %6, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call %struct.ctl_table* @find_entry(%struct.ctl_table_header** %8, %struct.ctl_dir* %44, i8* %45, i32 %47)
  store %struct.ctl_table* %48, %struct.ctl_table** %9, align 8
  %49 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %50 = icmp ne %struct.ctl_table* %49, null
  br i1 %50, label %51, label %78

51:                                               ; preds = %40
  %52 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %53 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @S_ISDIR(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %59 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @S_ISDIR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %75, label %63

63:                                               ; preds = %57, %51
  %64 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %65 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @S_ISLNK(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %63
  %70 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %71 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %70, i32 0, i32 1
  %72 = load %struct.ctl_table_root*, %struct.ctl_table_root** %71, align 8
  %73 = load %struct.ctl_table_root*, %struct.ctl_table_root** %4, align 8
  %74 = icmp eq %struct.ctl_table_root* %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69, %57
  %76 = load %struct.ctl_table_header*, %struct.ctl_table_header** %8, align 8
  %77 = call i32 @drop_sysctl_table(%struct.ctl_table_header* %76)
  br label %84

78:                                               ; preds = %69, %63, %40
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.ctl_dir*, %struct.ctl_dir** %5, align 8
  %81 = call i32 @sysctl_print_dir(%struct.ctl_dir* %80)
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @pr_cont(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %82)
  br label %84

84:                                               ; preds = %78, %75
  br label %85

85:                                               ; preds = %84
  %86 = load %struct.ctl_table*, %struct.ctl_table** %7, align 8
  %87 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %86, i32 1
  store %struct.ctl_table* %87, %struct.ctl_table** %7, align 8
  br label %35

88:                                               ; preds = %22, %30, %35
  ret void
}

declare dso_local %struct.ctl_dir* @xlate_dir(%struct.ctl_table_set*, %struct.ctl_dir*) #1

declare dso_local i64 @IS_ERR(%struct.ctl_dir*) #1

declare dso_local %struct.ctl_table* @find_entry(%struct.ctl_table_header**, %struct.ctl_dir*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @drop_sysctl_table(%struct.ctl_table_header*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sysctl_print_dir(%struct.ctl_dir*) #1

declare dso_local i32 @pr_cont(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
