; ModuleID = '/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/can/j1939/extr_transport.c_j1939_session_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.j1939_addr = type { i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.j1939_addr*, %struct.j1939_addr*, i32)* @j1939_session_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @j1939_session_match(%struct.j1939_addr* %0, %struct.j1939_addr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.j1939_addr*, align 8
  %6 = alloca %struct.j1939_addr*, align 8
  %7 = alloca i32, align 4
  store %struct.j1939_addr* %0, %struct.j1939_addr** %5, align 8
  store %struct.j1939_addr* %1, %struct.j1939_addr** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.j1939_addr*, %struct.j1939_addr** %5, align 8
  %9 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.j1939_addr*, %struct.j1939_addr** %6, align 8
  %12 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %122

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %70

19:                                               ; preds = %16
  %20 = load %struct.j1939_addr*, %struct.j1939_addr** %5, align 8
  %21 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %19
  %25 = load %struct.j1939_addr*, %struct.j1939_addr** %5, align 8
  %26 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.j1939_addr*, %struct.j1939_addr** %6, align 8
  %29 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %122

33:                                               ; preds = %24
  br label %44

34:                                               ; preds = %19
  %35 = load %struct.j1939_addr*, %struct.j1939_addr** %5, align 8
  %36 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.j1939_addr*, %struct.j1939_addr** %6, align 8
  %39 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %122

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %33
  %45 = load %struct.j1939_addr*, %struct.j1939_addr** %5, align 8
  %46 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.j1939_addr*, %struct.j1939_addr** %5, align 8
  %51 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.j1939_addr*, %struct.j1939_addr** %6, align 8
  %54 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %122

58:                                               ; preds = %49
  br label %69

59:                                               ; preds = %44
  %60 = load %struct.j1939_addr*, %struct.j1939_addr** %5, align 8
  %61 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.j1939_addr*, %struct.j1939_addr** %6, align 8
  %64 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %122

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %58
  br label %121

70:                                               ; preds = %16
  %71 = load %struct.j1939_addr*, %struct.j1939_addr** %5, align 8
  %72 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.j1939_addr*, %struct.j1939_addr** %5, align 8
  %77 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.j1939_addr*, %struct.j1939_addr** %6, align 8
  %80 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %122

84:                                               ; preds = %75
  br label %95

85:                                               ; preds = %70
  %86 = load %struct.j1939_addr*, %struct.j1939_addr** %5, align 8
  %87 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.j1939_addr*, %struct.j1939_addr** %6, align 8
  %90 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %122

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %84
  %96 = load %struct.j1939_addr*, %struct.j1939_addr** %5, align 8
  %97 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.j1939_addr*, %struct.j1939_addr** %5, align 8
  %102 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.j1939_addr*, %struct.j1939_addr** %6, align 8
  %105 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %103, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  store i32 0, i32* %4, align 4
  br label %122

109:                                              ; preds = %100
  br label %120

110:                                              ; preds = %95
  %111 = load %struct.j1939_addr*, %struct.j1939_addr** %5, align 8
  %112 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.j1939_addr*, %struct.j1939_addr** %6, align 8
  %115 = getelementptr inbounds %struct.j1939_addr, %struct.j1939_addr* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  store i32 0, i32* %4, align 4
  br label %122

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %119, %109
  br label %121

121:                                              ; preds = %120, %69
  store i32 1, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %118, %108, %93, %83, %67, %57, %42, %32, %15
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
