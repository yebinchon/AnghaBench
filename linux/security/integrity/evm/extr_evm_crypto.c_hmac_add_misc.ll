; ModuleID = '/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_crypto.c_hmac_add_misc.c'
source_filename = "/home/carl/AnghaBench/linux/security/integrity/evm/extr_evm_crypto.c_hmac_add_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { i32 }
%struct.inode = type { i64, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.h_misc = type { i64, i32, i32, i32, i32 }
%struct.h_misc.0 = type { i64, i32, i32, i32, i32 }

@EVM_XATTR_PORTABLE_DIGSIG = common dso_local global i8 0, align 1
@init_user_ns = common dso_local global i32 0, align 4
@evm_hmac_attrs = common dso_local global i32 0, align 4
@EVM_ATTR_FSUUID = common dso_local global i32 0, align 4
@UUID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.shash_desc*, %struct.inode*, i8, i8*)* @hmac_add_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hmac_add_misc(%struct.shash_desc* %0, %struct.inode* %1, i8 signext %2, i8* %3) #0 {
  %5 = alloca %struct.shash_desc*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8*, align 8
  %9 = alloca %struct.h_misc, align 8
  store %struct.shash_desc* %0, %struct.shash_desc** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i8 %2, i8* %7, align 1
  store i8* %3, i8** %8, align 8
  %10 = bitcast %struct.h_misc* %9 to %struct.h_misc.0*
  %11 = call i32 @memset(%struct.h_misc.0* %10, i32 0, i32 24)
  %12 = load i8, i8* %7, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* @EVM_XATTR_PORTABLE_DIGSIG, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %4
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.h_misc, %struct.h_misc* %9, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.h_misc, %struct.h_misc* %9, i32 0, i32 1
  store i32 %24, i32* %25, align 8
  br label %26

26:                                               ; preds = %17, %4
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @from_kuid(i32* @init_user_ns, i32 %29)
  %31 = getelementptr inbounds %struct.h_misc, %struct.h_misc* %9, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @from_kgid(i32* @init_user_ns, i32 %34)
  %36 = getelementptr inbounds %struct.h_misc, %struct.h_misc* %9, i32 0, i32 3
  store i32 %35, i32* %36, align 8
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.h_misc, %struct.h_misc* %9, i32 0, i32 4
  store i32 %39, i32* %40, align 4
  %41 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %42 = bitcast %struct.h_misc* %9 to i32*
  %43 = call i32 @crypto_shash_update(%struct.shash_desc* %41, i32* %42, i32 24)
  %44 = load i32, i32* @evm_hmac_attrs, align 4
  %45 = load i32, i32* @EVM_ATTR_FSUUID, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %26
  %49 = load i8, i8* %7, align 1
  %50 = sext i8 %49 to i32
  %51 = load i8, i8* @EVM_XATTR_PORTABLE_DIGSIG, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* @UUID_SIZE, align 4
  %61 = call i32 @crypto_shash_update(%struct.shash_desc* %55, i32* %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %48, %26
  %63 = load %struct.shash_desc*, %struct.shash_desc** %5, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i32 @crypto_shash_final(%struct.shash_desc* %63, i8* %64)
  ret void
}

declare dso_local i32 @memset(%struct.h_misc.0*, i32, i32) #1

declare dso_local i32 @from_kuid(i32*, i32) #1

declare dso_local i32 @from_kgid(i32*, i32) #1

declare dso_local i32 @crypto_shash_update(%struct.shash_desc*, i32*, i32) #1

declare dso_local i32 @crypto_shash_final(%struct.shash_desc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
