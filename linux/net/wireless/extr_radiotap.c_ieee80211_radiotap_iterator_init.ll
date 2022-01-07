; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_radiotap.c_ieee80211_radiotap_iterator_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_radiotap.c_ieee80211_radiotap_iterator_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_radiotap_iterator = type { i32, i32, i32, i32*, i32*, %struct.ieee80211_radiotap_header*, i32*, %struct.ieee80211_radiotap_vendor_namespaces*, i32*, i64, i64 }
%struct.ieee80211_radiotap_header = type { i32, i32, i64 }
%struct.ieee80211_radiotap_vendor_namespaces = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@radiotap_ns = common dso_local global i32 0, align 4
@IEEE80211_RADIOTAP_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_radiotap_iterator_init(%struct.ieee80211_radiotap_iterator* %0, %struct.ieee80211_radiotap_header* %1, i32 %2, %struct.ieee80211_radiotap_vendor_namespaces* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_radiotap_iterator*, align 8
  %7 = alloca %struct.ieee80211_radiotap_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_radiotap_vendor_namespaces*, align 8
  store %struct.ieee80211_radiotap_iterator* %0, %struct.ieee80211_radiotap_iterator** %6, align 8
  store %struct.ieee80211_radiotap_header* %1, %struct.ieee80211_radiotap_header** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_radiotap_vendor_namespaces* %3, %struct.ieee80211_radiotap_vendor_namespaces** %9, align 8
  %10 = load i32, i32* %8, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 16
  br i1 %12, label %13, label %16

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %142

16:                                               ; preds = %4
  %17 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %18 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %142

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %26, i32 0, i32 1
  %28 = call i32 @get_unaligned_le16(i32* %27)
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %142

33:                                               ; preds = %24
  %34 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %35 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %36 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %35, i32 0, i32 5
  store %struct.ieee80211_radiotap_header* %34, %struct.ieee80211_radiotap_header** %36, align 8
  %37 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %37, i32 0, i32 1
  %39 = call i32 @get_unaligned_le16(i32* %38)
  %40 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %42, i32 0, i32 10
  store i64 0, i64* %43, align 8
  %44 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %45 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %44, i32 0, i32 0
  %46 = call i32 @get_unaligned_le32(i32* %45)
  %47 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %50 = bitcast %struct.ieee80211_radiotap_header* %49 to i32*
  %51 = getelementptr inbounds i32, i32* %50, i64 16
  %52 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %53 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %52, i32 0, i32 3
  store i32* %51, i32** %53, align 8
  %54 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %54, i32 0, i32 9
  store i64 0, i64* %55, align 8
  %56 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %7, align 8
  %57 = getelementptr inbounds %struct.ieee80211_radiotap_header, %struct.ieee80211_radiotap_header* %56, i32 0, i32 0
  %58 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %58, i32 0, i32 8
  store i32* %57, i32** %59, align 8
  %60 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %61 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %60, i32 0, i32 8
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %61, align 8
  %64 = load %struct.ieee80211_radiotap_vendor_namespaces*, %struct.ieee80211_radiotap_vendor_namespaces** %9, align 8
  %65 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %66 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %65, i32 0, i32 7
  store %struct.ieee80211_radiotap_vendor_namespaces* %64, %struct.ieee80211_radiotap_vendor_namespaces** %66, align 8
  %67 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %68 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %67, i32 0, i32 6
  store i32* @radiotap_ns, i32** %68, align 8
  %69 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %70 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %69, i32 0, i32 2
  store i32 1, i32* %70, align 8
  %71 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %72 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @IEEE80211_RADIOTAP_EXT, align 4
  %75 = shl i32 1, %74
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %136

78:                                               ; preds = %33
  %79 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = ptrtoint i32* %81 to i64
  %83 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %83, i32 0, i32 5
  %85 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %84, align 8
  %86 = ptrtoint %struct.ieee80211_radiotap_header* %85 to i64
  %87 = sub i64 %82, %86
  %88 = add i64 %87, 4
  %89 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %90 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = icmp ugt i64 %88, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %78
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %142

97:                                               ; preds = %78
  br label %98

98:                                               ; preds = %130, %97
  %99 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %100 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @get_unaligned_le32(i32* %101)
  %103 = load i32, i32* @IEEE80211_RADIOTAP_EXT, align 4
  %104 = shl i32 1, %103
  %105 = and i32 %102, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %98
  %108 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %109 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  store i32* %111, i32** %109, align 8
  %112 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %113 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = ptrtoint i32* %114 to i64
  %116 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %117 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %116, i32 0, i32 5
  %118 = load %struct.ieee80211_radiotap_header*, %struct.ieee80211_radiotap_header** %117, align 8
  %119 = ptrtoint %struct.ieee80211_radiotap_header* %118 to i64
  %120 = sub i64 %115, %119
  %121 = add i64 %120, 4
  %122 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %123 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = icmp ugt i64 %121, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %107
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %142

130:                                              ; preds = %107
  br label %98

131:                                              ; preds = %98
  %132 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %133 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %132, i32 0, i32 3
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 4
  store i32* %135, i32** %133, align 8
  br label %136

136:                                              ; preds = %131, %33
  %137 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %138 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load %struct.ieee80211_radiotap_iterator*, %struct.ieee80211_radiotap_iterator** %6, align 8
  %141 = getelementptr inbounds %struct.ieee80211_radiotap_iterator, %struct.ieee80211_radiotap_iterator* %140, i32 0, i32 4
  store i32* %139, i32** %141, align 8
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %136, %127, %94, %30, %21, %13
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
