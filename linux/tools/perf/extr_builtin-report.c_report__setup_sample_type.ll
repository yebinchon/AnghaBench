; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_report__setup_sample_type.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/extr_builtin-report.c_report__setup_sample_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.report = type { i32, %struct.perf_session* }
%struct.perf_session = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64, i32, i64 }

@HEADER_AUXTRACE = common dso_local global i32 0, align 4
@PERF_SAMPLE_CALLCHAIN = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_STACK = common dso_local global i32 0, align 4
@perf_hpp_list = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [87 x i8] c"Selected --sort parent, but no callchain data. Did you call 'perf record' without -g?\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@symbol_conf = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [112 x i8] c"Selected -g or --branch-history.\0ABut no callchain or branch data.\0ADid you call 'perf record' without -g or -b?\0A\00", align 1
@callchain_param = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@CHAIN_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't register callchain params.\0A\00", align 1
@sort__mode = common dso_local global i64 0, align 8
@SORT_MODE__BRANCH = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [70 x i8] c"Selected -b but no branch data. Did you call perf record without -b?\0A\00", align 1
@PERF_SAMPLE_REGS_USER = common dso_local global i32 0, align 4
@PERF_SAMPLE_STACK_USER = common dso_local global i32 0, align 4
@CALLCHAIN_DWARF = common dso_local global i32 0, align 4
@dwarf_callchain_users = common dso_local global i32 0, align 4
@CALLCHAIN_LBR = common dso_local global i32 0, align 4
@CALLCHAIN_FP = common dso_local global i32 0, align 4
@PERF_SAMPLE_BRANCH_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.report*)* @report__setup_sample_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @report__setup_sample_type(%struct.report* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.report*, align 8
  %4 = alloca %struct.perf_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.report* %0, %struct.report** %3, align 8
  %7 = load %struct.report*, %struct.report** %3, align 8
  %8 = getelementptr inbounds %struct.report, %struct.report* %7, i32 0, i32 1
  %9 = load %struct.perf_session*, %struct.perf_session** %8, align 8
  store %struct.perf_session* %9, %struct.perf_session** %4, align 8
  %10 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %11 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @perf_evlist__combined_sample_type(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %15 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @perf_data__is_pipe(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %19 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %40, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %24
  %28 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %29 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %28, i32 0, i32 2
  %30 = load i32, i32* @HEADER_AUXTRACE, align 4
  %31 = call i64 @perf_header__has_feat(i32* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %35 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33, %1
  %41 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %33, %27, %24
  %45 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %46 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @PERF_SAMPLE_BRANCH_STACK, align 4
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %51, %44
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %79, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %58
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @perf_hpp_list, i32 0, i32 0), align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = call i32 @ui__error(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %165

70:                                               ; preds = %63
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @symbol_conf, i32 0, i32 0), align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @symbol_conf, i32 0, i32 2), align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %73
  %77 = call i32 @ui__error(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %165

78:                                               ; preds = %73, %70
  br label %98

79:                                               ; preds = %58, %55
  %80 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @callchain_param, i32 0, i32 2), align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %97, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @callchain_param, i32 0, i32 0), align 8
  %84 = load i64, i64* @CHAIN_NONE, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %97

86:                                               ; preds = %82
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @symbol_conf, i32 0, i32 0), align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %97, label %89

89:                                               ; preds = %86
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @symbol_conf, i32 0, i32 0), align 4
  %90 = call i64 @callchain_register_param(%struct.TYPE_9__* @callchain_param)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = call i32 @ui__error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %165

96:                                               ; preds = %89
  br label %97

97:                                               ; preds = %96, %86, %82, %79
  br label %98

98:                                               ; preds = %97, %78
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @symbol_conf, i32 0, i32 1), align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %98
  %102 = load i32, i32* %5, align 4
  %103 = load i32, i32* @PERF_SAMPLE_CALLCHAIN, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %101
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @symbol_conf, i32 0, i32 1), align 4
  %107 = call i32 (...) @perf_hpp__cancel_cumulate()
  br label %108

108:                                              ; preds = %106, %101
  br label %109

109:                                              ; preds = %108, %98
  %110 = load i64, i64* @sort__mode, align 8
  %111 = load i64, i64* @SORT_MODE__BRANCH, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %109
  %114 = load i32, i32* %6, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = load i32, i32* @PERF_SAMPLE_BRANCH_STACK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %116
  %122 = call i32 @ui__error(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %165

123:                                              ; preds = %116, %113
  br label %124

124:                                              ; preds = %123, %109
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @symbol_conf, i32 0, i32 0), align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @symbol_conf, i32 0, i32 1), align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %153

130:                                              ; preds = %127, %124
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* @PERF_SAMPLE_REGS_USER, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %130
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @PERF_SAMPLE_STACK_USER, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %135
  %141 = load i32, i32* @CALLCHAIN_DWARF, align 4
  store i32 %141, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @callchain_param, i32 0, i32 1), align 8
  store i32 1, i32* @dwarf_callchain_users, align 4
  br label %152

142:                                              ; preds = %135, %130
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* @PERF_SAMPLE_BRANCH_STACK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = load i32, i32* @CALLCHAIN_LBR, align 4
  store i32 %148, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @callchain_param, i32 0, i32 1), align 8
  br label %151

149:                                              ; preds = %142
  %150 = load i32, i32* @CALLCHAIN_FP, align 4
  store i32 %150, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @callchain_param, i32 0, i32 1), align 8
  br label %151

151:                                              ; preds = %149, %147
  br label %152

152:                                              ; preds = %151, %140
  br label %153

153:                                              ; preds = %152, %127
  %154 = load %struct.perf_session*, %struct.perf_session** %4, align 8
  %155 = getelementptr inbounds %struct.perf_session, %struct.perf_session* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @perf_evlist__combined_branch_type(i32 %156)
  %158 = load i32, i32* @PERF_SAMPLE_BRANCH_ANY, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %153
  %162 = load %struct.report*, %struct.report** %3, align 8
  %163 = getelementptr inbounds %struct.report, %struct.report* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  br label %164

164:                                              ; preds = %161, %153
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %164, %121, %92, %76, %66
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @perf_evlist__combined_sample_type(i32) #1

declare dso_local i32 @perf_data__is_pipe(i32) #1

declare dso_local i64 @perf_header__has_feat(i32*, i32) #1

declare dso_local i32 @ui__error(i8*) #1

declare dso_local i64 @callchain_register_param(%struct.TYPE_9__*) #1

declare dso_local i32 @perf_hpp__cancel_cumulate(...) #1

declare dso_local i32 @perf_evlist__combined_branch_type(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
