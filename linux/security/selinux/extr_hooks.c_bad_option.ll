; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_bad_option.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/extr_hooks.c_bad_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.superblock_security_struct = type { i8 }

@SE_MNTMASK = common dso_local global i8 0, align 1
@SE_SBINITIALIZED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.superblock_security_struct*, i8, i64, i64)* @bad_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bad_option(%struct.superblock_security_struct* %0, i8 signext %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.superblock_security_struct*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  store %struct.superblock_security_struct* %0, %struct.superblock_security_struct** %6, align 8
  store i8 %1, i8* %7, align 1
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %12 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = load i8, i8* @SE_MNTMASK, align 1
  %16 = sext i8 %15 to i32
  %17 = and i32 %14, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %10, align 1
  %19 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %20 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = load i32, i32* @SE_SBINITIALIZED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %4
  %27 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %28 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %7, align 1
  %32 = sext i8 %31 to i32
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %26
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35, %26
  store i32 1, i32* %5, align 4
  br label %59

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40, %4
  %42 = load %struct.superblock_security_struct*, %struct.superblock_security_struct** %6, align 8
  %43 = getelementptr inbounds %struct.superblock_security_struct, %struct.superblock_security_struct* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = load i32, i32* @SE_SBINITIALIZED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %41
  %50 = load i8, i8* %10, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8, i8* %7, align 1
  %53 = sext i8 %52 to i32
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  br label %59

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %41
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %58, %56, %39
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
