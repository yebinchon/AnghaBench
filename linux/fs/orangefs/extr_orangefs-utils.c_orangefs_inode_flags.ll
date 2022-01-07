; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-utils.c_orangefs_inode_flags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_orangefs-utils.c_orangefs_inode_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ORANGEFS_sys_attr_s = type { i32 }

@ORANGEFS_IMMUTABLE_FL = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@ORANGEFS_APPEND_FL = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@ORANGEFS_NOATIME_FL = common dso_local global i32 0, align 4
@S_NOATIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ORANGEFS_sys_attr_s*)* @orangefs_inode_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_inode_flags(%struct.ORANGEFS_sys_attr_s* %0) #0 {
  %2 = alloca %struct.ORANGEFS_sys_attr_s*, align 8
  %3 = alloca i32, align 4
  store %struct.ORANGEFS_sys_attr_s* %0, %struct.ORANGEFS_sys_attr_s** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %5 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @ORANGEFS_IMMUTABLE_FL, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @S_IMMUTABLE, align 4
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  br label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @S_IMMUTABLE, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %19

19:                                               ; preds = %14, %10
  %20 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %21 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ORANGEFS_APPEND_FL, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load i32, i32* @S_APPEND, align 4
  %28 = load i32, i32* %3, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %19
  %31 = load i32, i32* @S_APPEND, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %3, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = load %struct.ORANGEFS_sys_attr_s*, %struct.ORANGEFS_sys_attr_s** %2, align 8
  %37 = getelementptr inbounds %struct.ORANGEFS_sys_attr_s, %struct.ORANGEFS_sys_attr_s* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ORANGEFS_NOATIME_FL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @S_NOATIME, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %35
  %47 = load i32, i32* @S_NOATIME, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %42
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
