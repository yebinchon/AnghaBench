; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_main.c_evm_inode_init_security.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_main.c_evm_inode_init_security.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.xattr = type { i32, i32, %struct.evm_xattr* }
%struct.evm_xattr = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EVM_XATTR_HMAC = common dso_local global i32 0, align 4
@XATTR_EVM_SUFFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evm_inode_init_security(%struct.inode* %0, %struct.xattr* %1, %struct.xattr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.xattr*, align 8
  %7 = alloca %struct.xattr*, align 8
  %8 = alloca %struct.evm_xattr*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.xattr* %1, %struct.xattr** %6, align 8
  store %struct.xattr* %2, %struct.xattr** %7, align 8
  %10 = call i32 (...) @evm_key_loaded()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %3
  %13 = load %struct.xattr*, %struct.xattr** %6, align 8
  %14 = getelementptr inbounds %struct.xattr, %struct.xattr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @evm_protected_xattr(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %54

19:                                               ; preds = %12
  %20 = load i32, i32* @GFP_NOFS, align 4
  %21 = call %struct.evm_xattr* @kzalloc(i32 8, i32 %20)
  store %struct.evm_xattr* %21, %struct.evm_xattr** %8, align 8
  %22 = load %struct.evm_xattr*, %struct.evm_xattr** %8, align 8
  %23 = icmp ne %struct.evm_xattr* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %54

27:                                               ; preds = %19
  %28 = load i32, i32* @EVM_XATTR_HMAC, align 4
  %29 = load %struct.evm_xattr*, %struct.evm_xattr** %8, align 8
  %30 = getelementptr inbounds %struct.evm_xattr, %struct.evm_xattr* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = load %struct.xattr*, %struct.xattr** %6, align 8
  %34 = load %struct.evm_xattr*, %struct.evm_xattr** %8, align 8
  %35 = getelementptr inbounds %struct.evm_xattr, %struct.evm_xattr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @evm_init_hmac(%struct.inode* %32, %struct.xattr* %33, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  br label %50

41:                                               ; preds = %27
  %42 = load %struct.evm_xattr*, %struct.evm_xattr** %8, align 8
  %43 = load %struct.xattr*, %struct.xattr** %7, align 8
  %44 = getelementptr inbounds %struct.xattr, %struct.xattr* %43, i32 0, i32 2
  store %struct.evm_xattr* %42, %struct.evm_xattr** %44, align 8
  %45 = load %struct.xattr*, %struct.xattr** %7, align 8
  %46 = getelementptr inbounds %struct.xattr, %struct.xattr* %45, i32 0, i32 0
  store i32 8, i32* %46, align 8
  %47 = load i32, i32* @XATTR_EVM_SUFFIX, align 4
  %48 = load %struct.xattr*, %struct.xattr** %7, align 8
  %49 = getelementptr inbounds %struct.xattr, %struct.xattr* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %4, align 4
  br label %54

50:                                               ; preds = %40
  %51 = load %struct.evm_xattr*, %struct.evm_xattr** %8, align 8
  %52 = call i32 @kfree(%struct.evm_xattr* %51)
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %41, %24, %18
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @evm_key_loaded(...) #1

declare dso_local i32 @evm_protected_xattr(i32) #1

declare dso_local %struct.evm_xattr* @kzalloc(i32, i32) #1

declare dso_local i32 @evm_init_hmac(%struct.inode*, %struct.xattr*, i32) #1

declare dso_local i32 @kfree(%struct.evm_xattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
