; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_hmac_wkm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_auth.c_ubifs_hmac_wkm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ubifs_info = type { i32 }

@shash = common dso_local global %struct.TYPE_6__* null, align 8
@__const.ubifs_hmac_wkm.well_known_message = private unnamed_addr constant [6 x i8] c"UBIFS\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_hmac_wkm(%struct.ubifs_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x i8], align 1
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %9 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %10 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__* %8, i32 %11)
  %13 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %13, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.ubifs_hmac_wkm.well_known_message, i32 0, i32 0), i64 6, i1 false)
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %15 = call i32 @ubifs_authenticated(%struct.ubifs_info* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

18:                                               ; preds = %2
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %20 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %25 = call i32 @crypto_shash_init(%struct.TYPE_6__* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %18
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %32 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %33 = call i32 @crypto_shash_update(%struct.TYPE_6__* %31, i8* %32, i32 5)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %30
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @shash, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @crypto_shash_final(%struct.TYPE_6__* %39, i32* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %36, %28, %17
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @SHASH_DESC_ON_STACK(%struct.TYPE_6__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ubifs_authenticated(%struct.ubifs_info*) #1

declare dso_local i32 @crypto_shash_init(%struct.TYPE_6__*) #1

declare dso_local i32 @crypto_shash_update(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @crypto_shash_final(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
