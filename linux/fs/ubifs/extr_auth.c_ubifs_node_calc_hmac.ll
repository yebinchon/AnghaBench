; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_node_calc_hmac.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_node_calc_hmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ubifs_info = type { i32, i32 }

@shash = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, i8*, i32, i32, i8*)* @ubifs_node_calc_hmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_node_calc_hmac(%struct.ubifs_info* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__* %14, i32 %17)
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %23 = load i32, i32* %10, align 4
  %24 = icmp sgt i32 %23, 8
  %25 = zext i1 %24 to i32
  %26 = call i32 @ubifs_assert(%struct.ubifs_info* %22, i32 %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = icmp slt i32 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ubifs_assert(%struct.ubifs_info* %27, i32 %33)
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %7, align 8
  %36 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %41 = call i32 @crypto_shash_init(%struct.TYPE_6__* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %5
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %6, align 4
  br label %88

46:                                               ; preds = %5
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr i8, i8* %48, i64 8
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 8
  %52 = call i32 @crypto_shash_update(%struct.TYPE_6__* %47, i8* %49, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %88

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* %12, align 4
  %62 = sub nsw i32 %60, %61
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %84

64:                                               ; preds = %57
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr i8, i8* %66, i64 %68
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr i8, i8* %69, i64 %71
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* %12, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i32 @crypto_shash_update(%struct.TYPE_6__* %65, i8* %72, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %64
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %6, align 4
  br label %88

83:                                               ; preds = %64
  br label %84

84:                                               ; preds = %83, %57
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = call i32 @crypto_shash_final(%struct.TYPE_6__* %85, i8* %86)
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %81, %55, %44
  %89 = load i32, i32* %6, align 4
  ret i32 %89
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_6__*) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @crypto_shash_final(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
