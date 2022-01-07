; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c___ubifs_node_calc_hash.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c___ubifs_node_calc_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ubifs_info = type { i32 }
%struct.ubifs_ch = type { i32 }

@shash = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ubifs_node_calc_hash(%struct.ubifs_info* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ubifs_ch*, align 8
  %9 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.ubifs_ch*
  store %struct.ubifs_ch* %11, %struct.ubifs_ch** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shash, align 8
  %13 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %14 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_4__* %12, i32 %15)
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %18 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shash, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @shash, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.ubifs_ch*, %struct.ubifs_ch** %8, align 8
  %25 = getelementptr inbounds %struct.ubifs_ch, %struct.ubifs_ch* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @crypto_shash_digest(%struct.TYPE_4__* %22, i8* %23, i32 %27, i32* %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %32
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @crypto_shash_digest(%struct.TYPE_4__*, i8*, i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
