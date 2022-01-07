; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_insert_header.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_insert_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table = type { i64 }
%struct.ctl_dir = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ctl_table_header = type { %struct.ctl_dir*, %struct.ctl_table* }

@EROFS = common dso_local global i32 0, align 4
@sysctl_mount_point = common dso_local global %struct.ctl_table* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_dir*, %struct.ctl_table_header*)* @insert_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @insert_header(%struct.ctl_dir* %0, %struct.ctl_table_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ctl_dir*, align 8
  %5 = alloca %struct.ctl_table_header*, align 8
  %6 = alloca %struct.ctl_table*, align 8
  %7 = alloca i32, align 4
  store %struct.ctl_dir* %0, %struct.ctl_dir** %4, align 8
  store %struct.ctl_table_header* %1, %struct.ctl_table_header** %5, align 8
  %8 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %9 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %8, i32 0, i32 0
  %10 = call i64 @is_empty_dir(%struct.TYPE_3__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EROFS, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %88

15:                                               ; preds = %2
  %16 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %17 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %16, i32 0, i32 1
  %18 = load %struct.ctl_table*, %struct.ctl_table** %17, align 8
  %19 = load %struct.ctl_table*, %struct.ctl_table** @sysctl_mount_point, align 8
  %20 = icmp eq %struct.ctl_table* %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  %22 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %23 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %22, i32 0, i32 1
  %24 = call i32 @RB_EMPTY_ROOT(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %88

29:                                               ; preds = %21
  %30 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %31 = call i32 @set_empty_dir(%struct.ctl_dir* %30)
  br label %32

32:                                               ; preds = %29, %15
  %33 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %34 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %39 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %40 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %39, i32 0, i32 0
  store %struct.ctl_dir* %38, %struct.ctl_dir** %40, align 8
  %41 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %42 = call i32 @insert_links(%struct.ctl_table_header* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %72

46:                                               ; preds = %32
  %47 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %48 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %47, i32 0, i32 1
  %49 = load %struct.ctl_table*, %struct.ctl_table** %48, align 8
  store %struct.ctl_table* %49, %struct.ctl_table** %6, align 8
  br label %50

50:                                               ; preds = %63, %46
  %51 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %52 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %57 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %58 = call i32 @insert_entry(%struct.ctl_table_header* %56, %struct.ctl_table* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %67

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.ctl_table*, %struct.ctl_table** %6, align 8
  %65 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %64, i32 1
  store %struct.ctl_table* %65, %struct.ctl_table** %6, align 8
  br label %50

66:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %88

67:                                               ; preds = %61
  %68 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %69 = call i32 @erase_header(%struct.ctl_table_header* %68)
  %70 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %71 = call i32 @put_links(%struct.ctl_table_header* %70)
  br label %72

72:                                               ; preds = %67, %45
  %73 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %74 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %73, i32 0, i32 1
  %75 = load %struct.ctl_table*, %struct.ctl_table** %74, align 8
  %76 = load %struct.ctl_table*, %struct.ctl_table** @sysctl_mount_point, align 8
  %77 = icmp eq %struct.ctl_table* %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %80 = call i32 @clear_empty_dir(%struct.ctl_dir* %79)
  br label %81

81:                                               ; preds = %78, %72
  %82 = load %struct.ctl_table_header*, %struct.ctl_table_header** %5, align 8
  %83 = getelementptr inbounds %struct.ctl_table_header, %struct.ctl_table_header* %82, i32 0, i32 0
  store %struct.ctl_dir* null, %struct.ctl_dir** %83, align 8
  %84 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %85 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %84, i32 0, i32 0
  %86 = call i32 @drop_sysctl_table(%struct.TYPE_3__* %85)
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %81, %66, %26, %12
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i64 @is_empty_dir(%struct.TYPE_3__*) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i32 @set_empty_dir(%struct.ctl_dir*) #1

declare dso_local i32 @insert_links(%struct.ctl_table_header*) #1

declare dso_local i32 @insert_entry(%struct.ctl_table_header*, %struct.ctl_table*) #1

declare dso_local i32 @erase_header(%struct.ctl_table_header*) #1

declare dso_local i32 @put_links(%struct.ctl_table_header*) #1

declare dso_local i32 @clear_empty_dir(%struct.ctl_dir*) #1

declare dso_local i32 @drop_sysctl_table(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
