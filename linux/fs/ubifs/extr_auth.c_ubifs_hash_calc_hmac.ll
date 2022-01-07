; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_hash_calc_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_hash_calc_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ubifs_info = type { i32, i32 }

@shash = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i32*, i32*)* @ubifs_hash_calc_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_hash_calc_hmac(%struct.ubifs_info* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shash, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_4__* %9, i32 %12)
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shash, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shash, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %22 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @crypto_shash_digest(%struct.TYPE_4__* %19, i32* %20, i32 %23, i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %31

30:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %30, %28
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_4__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
