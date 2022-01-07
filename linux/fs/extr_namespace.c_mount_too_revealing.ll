; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namespace.c_mount_too_revealing.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namespace.c_mount_too_revealing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mnt_namespace* }
%struct.mnt_namespace = type { i32* }
%struct.super_block = type { i64 }

@SB_I_NOEXEC = common dso_local global i64 0, align 8
@SB_I_NODEV = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_4__* null, align 8
@init_user_ns = common dso_local global i32 0, align 4
@SB_I_USERNS_VISIBLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Expected s_iflags to contain 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32*)* @mount_too_revealing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mount_too_revealing(%struct.super_block* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mnt_namespace*, align 8
  %8 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i64, i64* @SB_I_NOEXEC, align 8
  %10 = load i64, i64* @SB_I_NODEV, align 8
  %11 = or i64 %9, %10
  store i64 %11, i64* %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.mnt_namespace*, %struct.mnt_namespace** %15, align 8
  store %struct.mnt_namespace* %16, %struct.mnt_namespace** %7, align 8
  %17 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %18 = getelementptr inbounds %struct.mnt_namespace, %struct.mnt_namespace* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, @init_user_ns
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %48

22:                                               ; preds = %2
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @SB_I_USERNS_VISIBLE, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %48

31:                                               ; preds = %22
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* %6, align 8
  %34 = and i64 %32, %33
  %35 = load i64, i64* %6, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %38)
  store i32 1, i32* %3, align 4
  br label %48

40:                                               ; preds = %31
  %41 = load %struct.mnt_namespace*, %struct.mnt_namespace** %7, align 8
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = load i32*, i32** %5, align 8
  %44 = call i32 @mnt_already_visible(%struct.mnt_namespace* %41, %struct.super_block* %42, i32* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %40, %37, %30, %21
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i64) #1

declare dso_local i32 @mnt_already_visible(%struct.mnt_namespace*, %struct.super_block*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
