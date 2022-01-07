; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_among.c_ebt_mac_wormhash_contains.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/netfilter/extr_ebt_among.c_ebt_mac_wormhash_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebt_mac_wormhash = type { i32*, %struct.ebt_mac_wormhash_tuple* }
%struct.ebt_mac_wormhash_tuple = type { i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ebt_mac_wormhash*, i8*, i64)* @ebt_mac_wormhash_contains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebt_mac_wormhash_contains(%struct.ebt_mac_wormhash* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ebt_mac_wormhash*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ebt_mac_wormhash_tuple*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i64], align 16
  %13 = alloca i32, align 4
  store %struct.ebt_mac_wormhash* %0, %struct.ebt_mac_wormhash** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = bitcast [2 x i64]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %14, i8 0, i64 16, i1 false)
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 5
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %13, align 4
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %20 = bitcast i64* %19 to i8*
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @ether_addr_copy(i8* %21, i8* %22)
  %24 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %5, align 8
  %25 = getelementptr inbounds %struct.ebt_mac_wormhash, %struct.ebt_mac_wormhash* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %5, align 8
  %32 = getelementptr inbounds %struct.ebt_mac_wormhash, %struct.ebt_mac_wormhash* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %10, align 4
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %89

41:                                               ; preds = %3
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %85, %41
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %88

47:                                               ; preds = %43
  %48 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %5, align 8
  %49 = getelementptr inbounds %struct.ebt_mac_wormhash, %struct.ebt_mac_wormhash* %48, i32 0, i32 1
  %50 = load %struct.ebt_mac_wormhash_tuple*, %struct.ebt_mac_wormhash_tuple** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ebt_mac_wormhash_tuple, %struct.ebt_mac_wormhash_tuple* %50, i64 %52
  store %struct.ebt_mac_wormhash_tuple* %53, %struct.ebt_mac_wormhash_tuple** %8, align 8
  %54 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.ebt_mac_wormhash_tuple*, %struct.ebt_mac_wormhash_tuple** %8, align 8
  %57 = getelementptr inbounds %struct.ebt_mac_wormhash_tuple, %struct.ebt_mac_wormhash_tuple* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %55, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %47
  %63 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %64 = load i64, i64* %63, align 16
  %65 = load %struct.ebt_mac_wormhash_tuple*, %struct.ebt_mac_wormhash_tuple** %8, align 8
  %66 = getelementptr inbounds %struct.ebt_mac_wormhash_tuple, %struct.ebt_mac_wormhash_tuple* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %64, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %62
  %72 = load %struct.ebt_mac_wormhash_tuple*, %struct.ebt_mac_wormhash_tuple** %8, align 8
  %73 = getelementptr inbounds %struct.ebt_mac_wormhash_tuple, %struct.ebt_mac_wormhash_tuple* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %71
  %77 = load %struct.ebt_mac_wormhash_tuple*, %struct.ebt_mac_wormhash_tuple** %8, align 8
  %78 = getelementptr inbounds %struct.ebt_mac_wormhash_tuple, %struct.ebt_mac_wormhash_tuple* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %7, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %76, %71
  store i32 1, i32* %4, align 4
  br label %132

83:                                               ; preds = %76
  br label %84

84:                                               ; preds = %83, %62, %47
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %11, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %11, align 4
  br label %43

88:                                               ; preds = %43
  br label %131

89:                                               ; preds = %3
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %11, align 4
  br label %91

91:                                               ; preds = %127, %89
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %130

95:                                               ; preds = %91
  %96 = load %struct.ebt_mac_wormhash*, %struct.ebt_mac_wormhash** %5, align 8
  %97 = getelementptr inbounds %struct.ebt_mac_wormhash, %struct.ebt_mac_wormhash* %96, i32 0, i32 1
  %98 = load %struct.ebt_mac_wormhash_tuple*, %struct.ebt_mac_wormhash_tuple** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ebt_mac_wormhash_tuple, %struct.ebt_mac_wormhash_tuple* %98, i64 %100
  store %struct.ebt_mac_wormhash_tuple* %101, %struct.ebt_mac_wormhash_tuple** %8, align 8
  %102 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 1
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.ebt_mac_wormhash_tuple*, %struct.ebt_mac_wormhash_tuple** %8, align 8
  %105 = getelementptr inbounds %struct.ebt_mac_wormhash_tuple, %struct.ebt_mac_wormhash_tuple* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %103, %108
  br i1 %109, label %110, label %126

110:                                              ; preds = %95
  %111 = getelementptr inbounds [2 x i64], [2 x i64]* %12, i64 0, i64 0
  %112 = load i64, i64* %111, align 16
  %113 = load %struct.ebt_mac_wormhash_tuple*, %struct.ebt_mac_wormhash_tuple** %8, align 8
  %114 = getelementptr inbounds %struct.ebt_mac_wormhash_tuple, %struct.ebt_mac_wormhash_tuple* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %112, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %110
  %120 = load %struct.ebt_mac_wormhash_tuple*, %struct.ebt_mac_wormhash_tuple** %8, align 8
  %121 = getelementptr inbounds %struct.ebt_mac_wormhash_tuple, %struct.ebt_mac_wormhash_tuple* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 1, i32* %4, align 4
  br label %132

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %125, %110, %95
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %91

130:                                              ; preds = %91
  br label %131

131:                                              ; preds = %130, %88
  store i32 0, i32* %4, align 4
  br label %132

132:                                              ; preds = %131, %124, %82
  %133 = load i32, i32* %4, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ether_addr_copy(i8*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
