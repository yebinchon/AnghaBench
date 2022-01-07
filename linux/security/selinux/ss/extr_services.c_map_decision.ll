; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_map_decision.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_map_decision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.selinux_map = type { i64, %struct.selinux_mapping* }
%struct.selinux_mapping = type { i32, i32* }
%struct.av_decision = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.selinux_map*, i64, %struct.av_decision*, i32)* @map_decision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @map_decision(%struct.selinux_map* %0, i64 %1, %struct.av_decision* %2, i32 %3) #0 {
  %5 = alloca %struct.selinux_map*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.av_decision*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.selinux_mapping*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.selinux_map* %0, %struct.selinux_map** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.av_decision* %2, %struct.av_decision** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.selinux_map*, %struct.selinux_map** %5, align 8
  %15 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %164

18:                                               ; preds = %4
  %19 = load %struct.selinux_map*, %struct.selinux_map** %5, align 8
  %20 = getelementptr inbounds %struct.selinux_map, %struct.selinux_map* %19, i32 0, i32 1
  %21 = load %struct.selinux_mapping*, %struct.selinux_mapping** %20, align 8
  %22 = load i64, i64* %6, align 8
  %23 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %21, i64 %22
  store %struct.selinux_mapping* %23, %struct.selinux_mapping** %9, align 8
  %24 = load %struct.selinux_mapping*, %struct.selinux_mapping** %9, align 8
  %25 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %27

27:                                               ; preds = %67, %18
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %70

31:                                               ; preds = %27
  %32 = load %struct.av_decision*, %struct.av_decision** %7, align 8
  %33 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.selinux_mapping*, %struct.selinux_mapping** %9, align 8
  %36 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %34, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %12, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %44, %31
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %49
  %53 = load %struct.selinux_mapping*, %struct.selinux_mapping** %9, align 8
  %54 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %10, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %61, %52, %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %27

70:                                               ; preds = %27
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.av_decision*, %struct.av_decision** %7, align 8
  %73 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %74

74:                                               ; preds = %97, %70
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %100

78:                                               ; preds = %74
  %79 = load %struct.av_decision*, %struct.av_decision** %7, align 8
  %80 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.selinux_mapping*, %struct.selinux_mapping** %9, align 8
  %83 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %81, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %78
  %92 = load i32, i32* %10, align 4
  %93 = shl i32 1, %92
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %91, %78
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %10, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %10, align 4
  br label %74

100:                                              ; preds = %74
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.av_decision*, %struct.av_decision** %7, align 8
  %103 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %104

104:                                              ; preds = %144, %100
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %147

108:                                              ; preds = %104
  %109 = load %struct.av_decision*, %struct.av_decision** %7, align 8
  %110 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.selinux_mapping*, %struct.selinux_mapping** %9, align 8
  %113 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %111, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %108
  %122 = load i32, i32* %10, align 4
  %123 = shl i32 1, %122
  %124 = load i32, i32* %12, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %12, align 4
  br label %126

126:                                              ; preds = %121, %108
  %127 = load i32, i32* %8, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %126
  %130 = load %struct.selinux_mapping*, %struct.selinux_mapping** %9, align 8
  %131 = getelementptr inbounds %struct.selinux_mapping, %struct.selinux_mapping* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %129
  %139 = load i32, i32* %10, align 4
  %140 = shl i32 1, %139
  %141 = load i32, i32* %12, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %12, align 4
  br label %143

143:                                              ; preds = %138, %129, %126
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %10, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %10, align 4
  br label %104

147:                                              ; preds = %104
  br label %148

148:                                              ; preds = %157, %147
  %149 = load i32, i32* %10, align 4
  %150 = zext i32 %149 to i64
  %151 = icmp ult i64 %150, 32
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = load i32, i32* %10, align 4
  %154 = shl i32 1, %153
  %155 = load i32, i32* %12, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %12, align 4
  br label %157

157:                                              ; preds = %152
  %158 = load i32, i32* %10, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %10, align 4
  br label %148

160:                                              ; preds = %148
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.av_decision*, %struct.av_decision** %7, align 8
  %163 = getelementptr inbounds %struct.av_decision, %struct.av_decision* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  br label %164

164:                                              ; preds = %160, %4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
