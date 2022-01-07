; ModuleID = '/home/carl/AnghaBench/linux/security/extr_security.c_security_inode_removexattr.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_security.c_security_inode_removexattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }

@inode_removexattr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @security_inode_removexattr(%struct.dentry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.dentry*, %struct.dentry** %4, align 8
  %8 = call i32 @d_backing_inode(%struct.dentry* %7)
  %9 = call i32 @IS_PRIVATE(i32 %8)
  %10 = call i64 @unlikely(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

13:                                               ; preds = %2
  %14 = load i32, i32* @inode_removexattr, align 4
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32 @call_int_hook(i32 %14, i32 1, %struct.dentry* %15, i8* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @cap_inode_removexattr(%struct.dentry* %21, i8* %22)
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %13
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %41

29:                                               ; preds = %24
  %30 = load %struct.dentry*, %struct.dentry** %4, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @ima_inode_removexattr(%struct.dentry* %30, i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %29
  %38 = load %struct.dentry*, %struct.dentry** %4, align 8
  %39 = load i8*, i8** %5, align 8
  %40 = call i32 @evm_inode_removexattr(%struct.dentry* %38, i8* %39)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %35, %27, %12
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @IS_PRIVATE(i32) #1

declare dso_local i32 @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @call_int_hook(i32, i32, %struct.dentry*, i8*) #1

declare dso_local i32 @cap_inode_removexattr(%struct.dentry*, i8*) #1

declare dso_local i32 @ima_inode_removexattr(%struct.dentry*, i8*) #1

declare dso_local i32 @evm_inode_removexattr(%struct.dentry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
