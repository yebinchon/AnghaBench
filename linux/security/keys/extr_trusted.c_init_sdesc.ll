; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_init_sdesc.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_init_sdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdesc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.crypto_shash* }
%struct.crypto_shash = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sdesc* (%struct.crypto_shash*)* @init_sdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sdesc* @init_sdesc(%struct.crypto_shash* %0) #0 {
  %2 = alloca %struct.sdesc*, align 8
  %3 = alloca %struct.crypto_shash*, align 8
  %4 = alloca %struct.sdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.crypto_shash* %0, %struct.crypto_shash** %3, align 8
  %6 = load %struct.crypto_shash*, %struct.crypto_shash** %3, align 8
  %7 = call i32 @crypto_shash_descsize(%struct.crypto_shash* %6)
  %8 = sext i32 %7 to i64
  %9 = add i64 4, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.sdesc* @kmalloc(i32 %11, i32 %12)
  store %struct.sdesc* %13, %struct.sdesc** %4, align 8
  %14 = load %struct.sdesc*, %struct.sdesc** %4, align 8
  %15 = icmp ne %struct.sdesc* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.sdesc* @ERR_PTR(i32 %18)
  store %struct.sdesc* %19, %struct.sdesc** %2, align 8
  br label %26

20:                                               ; preds = %1
  %21 = load %struct.crypto_shash*, %struct.crypto_shash** %3, align 8
  %22 = load %struct.sdesc*, %struct.sdesc** %4, align 8
  %23 = getelementptr inbounds %struct.sdesc, %struct.sdesc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.crypto_shash* %21, %struct.crypto_shash** %24, align 8
  %25 = load %struct.sdesc*, %struct.sdesc** %4, align 8
  store %struct.sdesc* %25, %struct.sdesc** %2, align 8
  br label %26

26:                                               ; preds = %20, %16
  %27 = load %struct.sdesc*, %struct.sdesc** %2, align 8
  ret %struct.sdesc* %27
}

declare dso_local i32 @crypto_shash_descsize(%struct.crypto_shash*) #1

declare dso_local %struct.sdesc* @kmalloc(i32, i32) #1

declare dso_local %struct.sdesc* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
