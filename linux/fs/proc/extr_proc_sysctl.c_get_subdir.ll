; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_get_subdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_get_subdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_dir = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.ctl_table_set* }
%struct.ctl_table_set = type { i32 }

@sysctl_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"sysctl could not get directory: \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"/%*.*s %ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctl_dir* (%struct.ctl_dir*, i8*, i32)* @get_subdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctl_dir* @get_subdir(%struct.ctl_dir* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ctl_dir*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_table_set*, align 8
  %8 = alloca %struct.ctl_dir*, align 8
  %9 = alloca %struct.ctl_dir*, align 8
  %10 = alloca i32, align 4
  store %struct.ctl_dir* %0, %struct.ctl_dir** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %12 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load %struct.ctl_table_set*, %struct.ctl_table_set** %13, align 8
  store %struct.ctl_table_set* %14, %struct.ctl_table_set** %7, align 8
  store %struct.ctl_dir* null, %struct.ctl_dir** %9, align 8
  %15 = call i32 @spin_lock(i32* @sysctl_lock)
  %16 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.ctl_dir* @find_subdir(%struct.ctl_dir* %16, i8* %17, i32 %18)
  store %struct.ctl_dir* %19, %struct.ctl_dir** %8, align 8
  %20 = load %struct.ctl_dir*, %struct.ctl_dir** %8, align 8
  %21 = call i64 @IS_ERR(%struct.ctl_dir* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %72

24:                                               ; preds = %3
  %25 = load %struct.ctl_dir*, %struct.ctl_dir** %8, align 8
  %26 = call i32 @PTR_ERR(%struct.ctl_dir* %25)
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %78

31:                                               ; preds = %24
  %32 = call i32 @spin_unlock(i32* @sysctl_lock)
  %33 = load %struct.ctl_table_set*, %struct.ctl_table_set** %7, align 8
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.ctl_dir* @new_dir(%struct.ctl_table_set* %33, i8* %34, i32 %35)
  store %struct.ctl_dir* %36, %struct.ctl_dir** %9, align 8
  %37 = call i32 @spin_lock(i32* @sysctl_lock)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.ctl_dir* @ERR_PTR(i32 %39)
  store %struct.ctl_dir* %40, %struct.ctl_dir** %8, align 8
  %41 = load %struct.ctl_dir*, %struct.ctl_dir** %9, align 8
  %42 = icmp ne %struct.ctl_dir* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %31
  br label %78

44:                                               ; preds = %31
  %45 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call %struct.ctl_dir* @find_subdir(%struct.ctl_dir* %45, i8* %46, i32 %47)
  store %struct.ctl_dir* %48, %struct.ctl_dir** %8, align 8
  %49 = load %struct.ctl_dir*, %struct.ctl_dir** %8, align 8
  %50 = call i64 @IS_ERR(%struct.ctl_dir* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %72

53:                                               ; preds = %44
  %54 = load %struct.ctl_dir*, %struct.ctl_dir** %8, align 8
  %55 = call i32 @PTR_ERR(%struct.ctl_dir* %54)
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp ne i32 %55, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %78

60:                                               ; preds = %53
  %61 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %62 = load %struct.ctl_dir*, %struct.ctl_dir** %9, align 8
  %63 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %62, i32 0, i32 0
  %64 = call i32 @insert_header(%struct.ctl_dir* %61, %struct.TYPE_3__* %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call %struct.ctl_dir* @ERR_PTR(i32 %65)
  store %struct.ctl_dir* %66, %struct.ctl_dir** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %78

70:                                               ; preds = %60
  %71 = load %struct.ctl_dir*, %struct.ctl_dir** %9, align 8
  store %struct.ctl_dir* %71, %struct.ctl_dir** %8, align 8
  br label %72

72:                                               ; preds = %70, %52, %23
  %73 = load %struct.ctl_dir*, %struct.ctl_dir** %8, align 8
  %74 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %69, %59, %43, %30
  %79 = load %struct.ctl_dir*, %struct.ctl_dir** %8, align 8
  %80 = call i64 @IS_ERR(%struct.ctl_dir* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %85 = call i32 @sysctl_print_dir(%struct.ctl_dir* %84)
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = load %struct.ctl_dir*, %struct.ctl_dir** %8, align 8
  %90 = call i32 @PTR_ERR(%struct.ctl_dir* %89)
  %91 = call i32 @pr_cont(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87, i8* %88, i32 %90)
  br label %92

92:                                               ; preds = %82, %78
  %93 = load %struct.ctl_dir*, %struct.ctl_dir** %4, align 8
  %94 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %93, i32 0, i32 0
  %95 = call i32 @drop_sysctl_table(%struct.TYPE_3__* %94)
  %96 = load %struct.ctl_dir*, %struct.ctl_dir** %9, align 8
  %97 = icmp ne %struct.ctl_dir* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load %struct.ctl_dir*, %struct.ctl_dir** %9, align 8
  %100 = getelementptr inbounds %struct.ctl_dir, %struct.ctl_dir* %99, i32 0, i32 0
  %101 = call i32 @drop_sysctl_table(%struct.TYPE_3__* %100)
  br label %102

102:                                              ; preds = %98, %92
  %103 = call i32 @spin_unlock(i32* @sysctl_lock)
  %104 = load %struct.ctl_dir*, %struct.ctl_dir** %8, align 8
  ret %struct.ctl_dir* %104
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.ctl_dir* @find_subdir(%struct.ctl_dir*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.ctl_dir*) #1

declare dso_local i32 @PTR_ERR(%struct.ctl_dir*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.ctl_dir* @new_dir(%struct.ctl_table_set*, i8*, i32) #1

declare dso_local %struct.ctl_dir* @ERR_PTR(i32) #1

declare dso_local i32 @insert_header(%struct.ctl_dir*, %struct.TYPE_3__*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @sysctl_print_dir(%struct.ctl_dir*) #1

declare dso_local i32 @pr_cont(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @drop_sysctl_table(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
