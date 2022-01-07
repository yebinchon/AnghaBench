; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_multiport.c_ports_match_v1.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_multiport.c_ports_match_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_multiport_v1 = type { i32, i32, i32, i32*, i64* }

@.str = private unnamed_addr constant [32 x i8] c"src or dst matches with %d-%d?\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"src or dst matches with %d?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_multiport_v1*, i32, i32)* @ports_match_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ports_match_v1(%struct.xt_multiport_v1* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xt_multiport_v1*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xt_multiport_v1* %0, %struct.xt_multiport_v1** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %143, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %14 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %146

17:                                               ; preds = %11
  %18 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %19 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %18, i32 0, i32 3
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %26 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %25, i32 0, i32 4
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %100

33:                                               ; preds = %17
  %34 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %35 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %46 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %98 [
    i32 128, label %48
    i32 130, label %62
    i32 129, label %76
  ]

48:                                               ; preds = %33
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %58 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = xor i32 1, %59
  store i32 %60, i32* %4, align 4
  br label %150

61:                                               ; preds = %52, %48
  br label %99

62:                                               ; preds = %33
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %62
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp sle i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %72 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = xor i32 1, %73
  store i32 %74, i32* %4, align 4
  br label %150

75:                                               ; preds = %66, %62
  br label %99

76:                                               ; preds = %33
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp sle i32 %81, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %80, %76
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %10, align 4
  %91 = icmp sle i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88, %80
  %93 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %94 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = xor i32 1, %95
  store i32 %96, i32* %4, align 4
  br label %150

97:                                               ; preds = %88, %84
  br label %99

98:                                               ; preds = %33
  br label %99

99:                                               ; preds = %98, %97, %75, %61
  br label %142

100:                                              ; preds = %17
  %101 = load i32, i32* %9, align 4
  %102 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %104 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %140 [
    i32 128, label %106
    i32 130, label %116
    i32 129, label %126
  ]

106:                                              ; preds = %100
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106
  %111 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %112 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = xor i32 1, %113
  store i32 %114, i32* %4, align 4
  br label %150

115:                                              ; preds = %106
  br label %141

116:                                              ; preds = %100
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %122 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = xor i32 1, %123
  store i32 %124, i32* %4, align 4
  br label %150

125:                                              ; preds = %116
  br label %141

126:                                              ; preds = %100
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %134, label %130

130:                                              ; preds = %126
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %130, %126
  %135 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %136 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = xor i32 1, %137
  store i32 %138, i32* %4, align 4
  br label %150

139:                                              ; preds = %130
  br label %141

140:                                              ; preds = %100
  br label %141

141:                                              ; preds = %140, %139, %125, %115
  br label %142

142:                                              ; preds = %141, %99
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %8, align 4
  %145 = add i32 %144, 1
  store i32 %145, i32* %8, align 4
  br label %11

146:                                              ; preds = %11
  %147 = load %struct.xt_multiport_v1*, %struct.xt_multiport_v1** %5, align 8
  %148 = getelementptr inbounds %struct.xt_multiport_v1, %struct.xt_multiport_v1* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %146, %134, %120, %110, %92, %70, %56
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
