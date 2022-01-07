; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_get_desc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shash_desc = type { %struct.crypto_shash* }
%struct.ubifs_info = type { i32 }
%struct.crypto_shash = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.shash_desc* (%struct.ubifs_info*, %struct.crypto_shash*)* @ubifs_get_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.shash_desc* @ubifs_get_desc(%struct.ubifs_info* %0, %struct.crypto_shash* %1) #0 {
  %3 = alloca %struct.shash_desc*, align 8
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.crypto_shash*, align 8
  %6 = alloca %struct.shash_desc*, align 8
  %7 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.crypto_shash* %1, %struct.crypto_shash** %5, align 8
  %8 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %9 = call i32 @ubifs_authenticated(%struct.ubifs_info* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.shash_desc* null, %struct.shash_desc** %3, align 8
  br label %39

12:                                               ; preds = %2
  %13 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %14 = call i64 @crypto_shash_descsize(%struct.crypto_shash* %13)
  %15 = add i64 8, %14
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.shash_desc* @kmalloc(i64 %15, i32 %16)
  store %struct.shash_desc* %17, %struct.shash_desc** %6, align 8
  %18 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %19 = icmp ne %struct.shash_desc* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.shash_desc* @ERR_PTR(i32 %22)
  store %struct.shash_desc* %23, %struct.shash_desc** %3, align 8
  br label %39

24:                                               ; preds = %12
  %25 = load %struct.crypto_shash*, %struct.crypto_shash** %5, align 8
  %26 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %27 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %26, i32 0, i32 0
  store %struct.crypto_shash* %25, %struct.crypto_shash** %27, align 8
  %28 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %29 = call i32 @crypto_shash_init(%struct.shash_desc* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  %34 = call i32 @kfree(%struct.shash_desc* %33)
  %35 = load i32, i32* %7, align 4
  %36 = call %struct.shash_desc* @ERR_PTR(i32 %35)
  store %struct.shash_desc* %36, %struct.shash_desc** %3, align 8
  br label %39

37:                                               ; preds = %24
  %38 = load %struct.shash_desc*, %struct.shash_desc** %6, align 8
  store %struct.shash_desc* %38, %struct.shash_desc** %3, align 8
  br label %39

39:                                               ; preds = %37, %32, %20, %11
  %40 = load %struct.shash_desc*, %struct.shash_desc** %3, align 8
  ret %struct.shash_desc* %40
}

declare dso_local i32 @ubifs_authenticated(%struct.ubifs_info*) #1

declare dso_local %struct.shash_desc* @kmalloc(i64, i32) #1

declare dso_local i64 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local %struct.shash_desc* @ERR_PTR(i32) #1

declare dso_local i32 @crypto_shash_init(%struct.shash_desc*) #1

declare dso_local i32 @kfree(%struct.shash_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
