; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_xattr_visible.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_xattr.c_xattr_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT = common dso_local global i32 0, align 4
@XATTR_TRUSTED_PREFIX = common dso_local global i32 0, align 4
@XATTR_TRUSTED_PREFIX_LEN = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @xattr_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xattr_visible(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = load i32, i32* @UBIFS_XATTR_NAME_ENCRYPTION_CONTEXT, align 4
  %6 = call i64 @strcmp(i8* %4, i32 %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = load i32, i32* @XATTR_TRUSTED_PREFIX, align 4
  %12 = load i32, i32* @XATTR_TRUSTED_PREFIX_LEN, align 4
  %13 = call i64 @strncmp(i8* %10, i32 %11, i32 %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %17 = call i32 @capable(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %21

20:                                               ; preds = %15, %9
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %19, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i32) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
