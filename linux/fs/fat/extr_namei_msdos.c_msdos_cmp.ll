; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_namei_msdos.c_msdos_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.qstr = type { i8*, i32 }
%struct.fat_mount_options = type { i32 }
%struct.TYPE_2__ = type { %struct.fat_mount_options }

@MSDOS_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32, i8*, %struct.qstr*)* @msdos_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdos_cmp(%struct.dentry* %0, i32 %1, i8* %2, %struct.qstr* %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.fat_mount_options*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.qstr* %3, %struct.qstr** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_2__* @MSDOS_SB(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.fat_mount_options* %18, %struct.fat_mount_options** %9, align 8
  %19 = load i32, i32* @MSDOS_NAME, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %10, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %11, align 8
  %23 = load i32, i32* @MSDOS_NAME, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %12, align 8
  %26 = load %struct.qstr*, %struct.qstr** %8, align 8
  %27 = getelementptr inbounds %struct.qstr, %struct.qstr* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.qstr*, %struct.qstr** %8, align 8
  %30 = getelementptr inbounds %struct.qstr, %struct.qstr* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %33 = call i32 @msdos_format_name(i8* %28, i32 %31, i8* %22, %struct.fat_mount_options* %32)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %4
  br label %51

37:                                               ; preds = %4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.fat_mount_options*, %struct.fat_mount_options** %9, align 8
  %41 = call i32 @msdos_format_name(i8* %38, i32 %39, i8* %25, %struct.fat_mount_options* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %51

45:                                               ; preds = %37
  %46 = load i32, i32* @MSDOS_NAME, align 4
  %47 = call i32 (i8*, ...) @memcmp(i8* %22, i8* %25, i32 %46)
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %64, %45
  %49 = load i32, i32* %13, align 4
  %50 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %50)
  ret i32 %49

51:                                               ; preds = %44, %36
  store i32 1, i32* %13, align 4
  %52 = load %struct.qstr*, %struct.qstr** %8, align 8
  %53 = getelementptr inbounds %struct.qstr, %struct.qstr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %51
  %58 = load %struct.qstr*, %struct.qstr** %8, align 8
  %59 = getelementptr inbounds %struct.qstr, %struct.qstr* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 (i8*, ...) @memcmp(i8* %60, i8* %61, i32 %62)
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %57, %51
  br label %48
}

declare dso_local %struct.TYPE_2__* @MSDOS_SB(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @msdos_format_name(i8*, i32, i8*, %struct.fat_mount_options*) #1

declare dso_local i32 @memcmp(i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
