; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_posix_acl.c_posix_xattr_acl.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_posix_acl.c_posix_xattr_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XATTR_NAME_POSIX_ACL_ACCESS = common dso_local global i8* null, align 8
@XATTR_NAME_POSIX_ACL_DEFAULT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @posix_xattr_acl(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i32 @strlen(i8* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i8*, i8** @XATTR_NAME_POSIX_ACL_ACCESS, align 8
  %8 = call i32 @strlen(i8* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i8*, i8** @XATTR_NAME_POSIX_ACL_ACCESS, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @strncmp(i8* %12, i8* %13, i32 %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %31

18:                                               ; preds = %11, %1
  %19 = load i8*, i8** @XATTR_NAME_POSIX_ACL_DEFAULT, align 8
  %20 = call i32 @strlen(i8* %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load i8*, i8** @XATTR_NAME_POSIX_ACL_DEFAULT, align 8
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @strncmp(i8* %24, i8* %25, i32 %26)
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %31

30:                                               ; preds = %23, %18
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %17
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
