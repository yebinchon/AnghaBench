; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_hash_key_type_and_desc.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyring.c_hash_key_type_and_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.keyring_index_key = type { i8*, i32, i64, i32*, i64 }

@ASSOC_ARRAY_LEVEL_STEP = common dso_local global i32 0, align 4
@ASSOC_ARRAY_FAN_MASK = common dso_local global i64 0, align 8
@ASSOC_ARRAY_KEY_CHUNK_SIZE = common dso_local global i32 0, align 4
@key_type_keyring = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.keyring_index_key*)* @hash_key_type_and_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_key_type_and_desc(%struct.keyring_index_key* %0) #0 {
  %2 = alloca %struct.keyring_index_key*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.keyring_index_key* %0, %struct.keyring_index_key** %2, align 8
  %12 = load i32, i32* @ASSOC_ARRAY_LEVEL_STEP, align 4
  store i32 %12, i32* %3, align 4
  %13 = load i64, i64* @ASSOC_ARRAY_FAN_MASK, align 8
  store i64 %13, i64* %4, align 8
  %14 = load %struct.keyring_index_key*, %struct.keyring_index_key** %2, align 8
  %15 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load %struct.keyring_index_key*, %struct.keyring_index_key** %2, align 8
  %18 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.keyring_index_key*, %struct.keyring_index_key** %2, align 8
  %21 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = ptrtoint i32* %22 to i64
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, 13
  %28 = call i32 @mult_64x32_and_fold(i32 %25, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @mult_64x32_and_fold(i32 %29, i32 9207)
  store i32 %30, i32* %9, align 4
  %31 = load %struct.keyring_index_key*, %struct.keyring_index_key** %2, align 8
  %32 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @mult_64x32_and_fold(i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @mult_64x32_and_fold(i32 %38, i32 9207)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %49, %1
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %65

45:                                               ; preds = %40
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 4
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 4, i32* %10, align 4
  br label %49

49:                                               ; preds = %48, %45
  store i32 0, i32* %8, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @memcpy(i32* %8, i8* %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8* %56, i8** %5, align 8
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sub nsw i32 %58, %57
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @mult_64x32_and_fold(i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @mult_64x32_and_fold(i32 %63, i32 9207)
  store i32 %64, i32* %9, align 4
  br label %40

65:                                               ; preds = %44
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %6, align 8
  %68 = load i32, i32* @ASSOC_ARRAY_KEY_CHUNK_SIZE, align 4
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = ashr i32 %71, 32
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %6, align 8
  %75 = xor i64 %74, %73
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.keyring_index_key*, %struct.keyring_index_key** %2, align 8
  %78 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, @key_type_keyring
  br i1 %80, label %81, label %96

81:                                               ; preds = %76
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %4, align 8
  %84 = and i64 %82, %83
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %81
  %87 = load i64, i64* %6, align 8
  %88 = load i32, i32* @ASSOC_ARRAY_KEY_CHUNK_SIZE, align 4
  %89 = load i32, i32* %3, align 4
  %90 = sub i32 %88, %89
  %91 = zext i32 %90 to i64
  %92 = lshr i64 %87, %91
  %93 = or i64 %92, 1
  %94 = load i64, i64* %6, align 8
  %95 = or i64 %94, %93
  store i64 %95, i64* %6, align 8
  br label %117

96:                                               ; preds = %81, %76
  %97 = load %struct.keyring_index_key*, %struct.keyring_index_key** %2, align 8
  %98 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = icmp eq i32* %99, @key_type_keyring
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* %4, align 8
  %104 = and i64 %102, %103
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %116

106:                                              ; preds = %101
  %107 = load i64, i64* %6, align 8
  %108 = load i64, i64* %6, align 8
  %109 = load i32, i32* %3, align 4
  %110 = zext i32 %109 to i64
  %111 = shl i64 %108, %110
  %112 = add i64 %107, %111
  %113 = load i64, i64* %4, align 8
  %114 = xor i64 %113, -1
  %115 = and i64 %112, %114
  store i64 %115, i64* %6, align 8
  br label %116

116:                                              ; preds = %106, %101, %96
  br label %117

117:                                              ; preds = %116, %86
  %118 = load i64, i64* %6, align 8
  %119 = load %struct.keyring_index_key*, %struct.keyring_index_key** %2, align 8
  %120 = getelementptr inbounds %struct.keyring_index_key, %struct.keyring_index_key* %119, i32 0, i32 2
  store i64 %118, i64* %120, align 8
  ret void
}

declare dso_local i32 @mult_64x32_and_fold(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
