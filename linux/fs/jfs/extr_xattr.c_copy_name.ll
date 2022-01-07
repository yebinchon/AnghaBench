; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_copy_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_xattr.c_copy_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jfs_ea = type { i32, i32 }

@XATTR_OS2_PREFIX = common dso_local global i32 0, align 4
@XATTR_OS2_PREFIX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.jfs_ea*)* @copy_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_name(i8* %0, %struct.jfs_ea* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.jfs_ea*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.jfs_ea* %1, %struct.jfs_ea** %4, align 8
  %6 = load %struct.jfs_ea*, %struct.jfs_ea** %4, align 8
  %7 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.jfs_ea*, %struct.jfs_ea** %4, align 8
  %10 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @is_known_namespace(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load i8*, i8** %3, align 8
  %16 = load i32, i32* @XATTR_OS2_PREFIX, align 4
  %17 = load i32, i32* @XATTR_OS2_PREFIX_LEN, align 4
  %18 = call i32 @memcpy(i8* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @XATTR_OS2_PREFIX_LEN, align 4
  %20 = load i8*, i8** %3, align 8
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  store i8* %22, i8** %3, align 8
  %23 = load i32, i32* @XATTR_OS2_PREFIX_LEN, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %14, %2
  %27 = load i8*, i8** %3, align 8
  %28 = load %struct.jfs_ea*, %struct.jfs_ea** %4, align 8
  %29 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.jfs_ea*, %struct.jfs_ea** %4, align 8
  %32 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @memcpy(i8* %27, i32 %30, i32 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = load %struct.jfs_ea*, %struct.jfs_ea** %4, align 8
  %37 = getelementptr inbounds %struct.jfs_ea, %struct.jfs_ea* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %35, i64 %39
  store i8 0, i8* %40, align 1
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @is_known_namespace(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
