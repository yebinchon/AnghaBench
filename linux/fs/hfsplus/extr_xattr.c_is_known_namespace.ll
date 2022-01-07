; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_xattr.c_is_known_namespace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_xattr.c_is_known_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XATTR_SYSTEM_PREFIX = common dso_local global i32 0, align 4
@XATTR_SYSTEM_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_USER_PREFIX = common dso_local global i32 0, align 4
@XATTR_USER_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX = common dso_local global i32 0, align 4
@XATTR_SECURITY_PREFIX_LEN = common dso_local global i32 0, align 4
@XATTR_TRUSTED_PREFIX = common dso_local global i32 0, align 4
@XATTR_TRUSTED_PREFIX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @is_known_namespace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_known_namespace(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i32, i32* @XATTR_SYSTEM_PREFIX, align 4
  %6 = load i32, i32* @XATTR_SYSTEM_PREFIX_LEN, align 4
  %7 = call i64 @strncmp(i8* %4, i32 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @XATTR_USER_PREFIX, align 4
  %12 = load i32, i32* @XATTR_USER_PREFIX_LEN, align 4
  %13 = call i64 @strncmp(i8* %10, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = load i32, i32* @XATTR_SECURITY_PREFIX, align 4
  %18 = load i32, i32* @XATTR_SECURITY_PREFIX_LEN, align 4
  %19 = call i64 @strncmp(i8* %16, i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = load i32, i32* @XATTR_TRUSTED_PREFIX, align 4
  %24 = load i32, i32* @XATTR_TRUSTED_PREFIX_LEN, align 4
  %25 = call i64 @strncmp(i8* %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %29

28:                                               ; preds = %21, %15, %9, %1
  store i32 1, i32* %2, align 4
  br label %29

29:                                               ; preds = %28, %27
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i64 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
