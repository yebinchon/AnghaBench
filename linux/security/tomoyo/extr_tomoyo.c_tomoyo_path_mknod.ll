; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_tomoyo.c_tomoyo_path_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_tomoyo.c_tomoyo_path_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry*, i32 }
%struct.dentry = type { i32 }

@TOMOYO_TYPE_CREATE = common dso_local global i32 0, align 4
@S_IALLUGO = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@TOMOYO_TYPE_MKCHAR = common dso_local global i32 0, align 4
@TOMOYO_TYPE_MKBLOCK = common dso_local global i32 0, align 4
@TOMOYO_TYPE_MKFIFO = common dso_local global i32 0, align 4
@TOMOYO_TYPE_MKSOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.dentry*, i32, i32)* @tomoyo_path_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_path_mknod(%struct.path* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.path*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.path, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 0
  %14 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %14, %struct.dentry** %13, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %10, i32 0, i32 1
  %16 = load %struct.path*, %struct.path** %6, align 8
  %17 = getelementptr inbounds %struct.path, %struct.path* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %15, align 8
  %19 = load i32, i32* @TOMOYO_TYPE_CREATE, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @S_IALLUGO, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @S_IFMT, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %30 [
    i32 130, label %26
    i32 131, label %28
  ]

26:                                               ; preds = %4
  %27 = load i32, i32* @TOMOYO_TYPE_MKCHAR, align 4
  store i32 %27, i32* %11, align 4
  br label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @TOMOYO_TYPE_MKBLOCK, align 4
  store i32 %29, i32* %11, align 4
  br label %31

30:                                               ; preds = %4
  br label %36

31:                                               ; preds = %28, %26
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @tomoyo_mkdev_perm(i32 %32, %struct.path* %10, i32 %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %48

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @S_IFMT, align 4
  %39 = and i32 %37, %38
  switch i32 %39, label %44 [
    i32 129, label %40
    i32 128, label %42
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* @TOMOYO_TYPE_MKFIFO, align 4
  store i32 %41, i32* %11, align 4
  br label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @TOMOYO_TYPE_MKSOCK, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %36, %42, %40
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @tomoyo_path_number_perm(i32 %45, %struct.path* %10, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %44, %31
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @tomoyo_mkdev_perm(i32, %struct.path*, i32, i32) #1

declare dso_local i32 @tomoyo_path_number_perm(i32, %struct.path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
