; ModuleID = '/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_push_insn.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/bpf/extr_verifier.c_push_insn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_verifier_env = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@FALLTHROUGH = common dso_local global i32 0, align 4
@DISCOVERED = common dso_local global i32 0, align 4
@BRANCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%d: \00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"jump out of range from insn %d to %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"back-edge from insn %d to %d\0A\00", align 1
@EXPLORED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"insn state internal bug\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.bpf_verifier_env*, i32)* @push_insn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @push_insn(i32 %0, i32 %1, i32 %2, %struct.bpf_verifier_env* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bpf_verifier_env*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.bpf_verifier_env* %3, %struct.bpf_verifier_env** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %15 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %19 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %13, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @FALLTHROUGH, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %5
  %26 = load i32*, i32** %13, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DISCOVERED, align 4
  %32 = load i32, i32* @FALLTHROUGH, align 4
  %33 = or i32 %31, %32
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %181

36:                                               ; preds = %25, %5
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @BRANCH, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DISCOVERED, align 4
  %47 = load i32, i32* @BRANCH, align 4
  %48 = or i32 %46, %47
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  br label %181

51:                                               ; preds = %40, %36
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %62, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %57 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %56, i32 0, i32 2
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %55, %60
  br i1 %61, label %62, label %73

62:                                               ; preds = %54, %51
  %63 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @verbose_linfo(%struct.bpf_verifier_env* %63, i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %67, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %6, align 4
  br label %181

73:                                               ; preds = %54
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @BRANCH, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @init_explored_state(%struct.bpf_verifier_env* %78, i32 %79)
  br label %81

81:                                               ; preds = %77, %73
  %82 = load i32*, i32** %13, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %124

88:                                               ; preds = %81
  %89 = load i32, i32* @DISCOVERED, align 4
  %90 = load i32, i32* %9, align 4
  %91 = or i32 %89, %90
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  store i32 %91, i32* %95, align 4
  %96 = load i32, i32* @DISCOVERED, align 4
  %97 = load i32*, i32** %13, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %96, i32* %100, align 4
  %101 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %102 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %106 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %105, i32 0, i32 2
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp sge i32 %104, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %88
  %112 = load i32, i32* @E2BIG, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %6, align 4
  br label %181

114:                                              ; preds = %88
  %115 = load i32, i32* %8, align 4
  %116 = load i32*, i32** %12, align 8
  %117 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %118 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  store i32 %115, i32* %123, align 4
  store i32 1, i32* %6, align 4
  br label %181

124:                                              ; preds = %81
  %125 = load i32*, i32** %13, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 240
  %131 = load i32, i32* @DISCOVERED, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %157

133:                                              ; preds = %124
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %133
  %137 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %138 = getelementptr inbounds %struct.bpf_verifier_env, %struct.bpf_verifier_env* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 0, i32* %6, align 4
  br label %181

142:                                              ; preds = %136, %133
  %143 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @verbose_linfo(%struct.bpf_verifier_env* %143, i32 %144, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %145)
  %147 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @verbose_linfo(%struct.bpf_verifier_env* %147, i32 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %149)
  %151 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %8, align 4
  %154 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %151, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %152, i32 %153)
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %6, align 4
  br label %181

157:                                              ; preds = %124
  %158 = load i32*, i32** %13, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @EXPLORED, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %173

165:                                              ; preds = %157
  %166 = load i32, i32* @DISCOVERED, align 4
  %167 = load i32, i32* %9, align 4
  %168 = or i32 %166, %167
  %169 = load i32*, i32** %13, align 8
  %170 = load i32, i32* %7, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %168, i32* %172, align 4
  br label %178

173:                                              ; preds = %157
  %174 = load %struct.bpf_verifier_env*, %struct.bpf_verifier_env** %10, align 8
  %175 = call i32 (%struct.bpf_verifier_env*, i8*, ...) @verbose(%struct.bpf_verifier_env* %174, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %176 = load i32, i32* @EFAULT, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %6, align 4
  br label %181

178:                                              ; preds = %165
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179
  store i32 0, i32* %6, align 4
  br label %181

181:                                              ; preds = %180, %173, %142, %141, %114, %111, %62, %50, %35
  %182 = load i32, i32* %6, align 4
  ret i32 %182
}

declare dso_local i32 @verbose_linfo(%struct.bpf_verifier_env*, i32, i8*, i32) #1

declare dso_local i32 @verbose(%struct.bpf_verifier_env*, i8*, ...) #1

declare dso_local i32 @init_explored_state(%struct.bpf_verifier_env*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
