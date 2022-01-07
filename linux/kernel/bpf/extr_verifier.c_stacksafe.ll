; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_stacksafe.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_stacksafe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_func_state = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.idpair = type { i32 }

@BPF_REG_SIZE = common dso_local global i32 0, align 4
@REG_LIVE_READ = common dso_local global i32 0, align 4
@STACK_INVALID = common dso_local global i64 0, align 8
@STACK_MISC = common dso_local global i64 0, align 8
@STACK_ZERO = common dso_local global i64 0, align 8
@STACK_SPILL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_func_state*, %struct.bpf_func_state*, %struct.idpair*)* @stacksafe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stacksafe(%struct.bpf_func_state* %0, %struct.bpf_func_state* %1, %struct.idpair* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_func_state*, align 8
  %6 = alloca %struct.bpf_func_state*, align 8
  %7 = alloca %struct.idpair*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bpf_func_state* %0, %struct.bpf_func_state** %5, align 8
  store %struct.bpf_func_state* %1, %struct.bpf_func_state** %6, align 8
  store %struct.idpair* %2, %struct.idpair** %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %168, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %13 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %171

16:                                               ; preds = %10
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @BPF_REG_SIZE, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %21 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @REG_LIVE_READ, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %16
  %33 = load i32, i32* @BPF_REG_SIZE, align 4
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %168

37:                                               ; preds = %16
  %38 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %39 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @BPF_REG_SIZE, align 4
  %48 = srem i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @STACK_INVALID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  br label %168

55:                                               ; preds = %37
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.bpf_func_state*, %struct.bpf_func_state** %6, align 8
  %58 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp sge i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %172

62:                                               ; preds = %55
  %63 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %64 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @BPF_REG_SIZE, align 4
  %73 = srem i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %70, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @STACK_MISC, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %62
  %80 = load %struct.bpf_func_state*, %struct.bpf_func_state** %6, align 8
  %81 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @BPF_REG_SIZE, align 4
  %90 = srem i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %87, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @STACK_ZERO, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %79
  br label %168

97:                                               ; preds = %79, %62
  %98 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %99 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* @BPF_REG_SIZE, align 4
  %108 = srem i32 %106, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %105, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.bpf_func_state*, %struct.bpf_func_state** %6, align 8
  %113 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %112, i32 0, i32 1
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @BPF_REG_SIZE, align 4
  %122 = srem i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %119, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %111, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %97
  store i32 0, i32* %4, align 4
  br label %172

128:                                              ; preds = %97
  %129 = load i32, i32* %8, align 4
  %130 = load i32, i32* @BPF_REG_SIZE, align 4
  %131 = srem i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %168

134:                                              ; preds = %128
  %135 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %136 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %135, i32 0, i32 1
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @STACK_SPILL, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %134
  br label %168

148:                                              ; preds = %134
  %149 = load %struct.bpf_func_state*, %struct.bpf_func_state** %5, align 8
  %150 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* %9, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  %156 = load %struct.bpf_func_state*, %struct.bpf_func_state** %6, align 8
  %157 = getelementptr inbounds %struct.bpf_func_state, %struct.bpf_func_state* %156, i32 0, i32 1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load %struct.idpair*, %struct.idpair** %7, align 8
  %164 = call i32 @regsafe(%struct.TYPE_5__* %155, %struct.TYPE_5__* %162, %struct.idpair* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %148
  store i32 0, i32* %4, align 4
  br label %172

167:                                              ; preds = %148
  br label %168

168:                                              ; preds = %167, %147, %133, %96, %54, %32
  %169 = load i32, i32* %8, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %8, align 4
  br label %10

171:                                              ; preds = %10
  store i32 1, i32* %4, align 4
  br label %172

172:                                              ; preds = %171, %166, %127, %61
  %173 = load i32, i32* %4, align 4
  ret i32 %173
}

declare dso_local i32 @regsafe(%struct.TYPE_5__*, %struct.TYPE_5__*, %struct.idpair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
