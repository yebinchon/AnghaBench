; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_data_latency_format.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_data_latency_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tep_handle = type { i32 }
%struct.trace_seq = type { i64, i32 }
%struct.tep_record = type { i8* }

@data_latency_format.check_lock_depth = internal global i32 1, align 4
@data_latency_format.check_migrate_disable = internal global i32 1, align 4
@data_latency_format.lock_depth_exists = internal global i32 0, align 4
@data_latency_format.migrate_disable_exists = internal global i32 0, align 4
@TRACE_FLAG_HARDIRQ = common dso_local global i32 0, align 4
@TRACE_FLAG_SOFTIRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%c%c%c\00", align 1
@TRACE_FLAG_IRQS_OFF = common dso_local global i32 0, align 4
@TRACE_FLAG_IRQS_NOSUPPORT = common dso_local global i32 0, align 4
@TRACE_FLAG_NEED_RESCHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@TRACE_SEQ__MEM_ALLOC_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tep_handle*, %struct.trace_seq*, i8*, %struct.tep_record*)* @data_latency_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_latency_format(%struct.tep_handle* %0, %struct.trace_seq* %1, i8* %2, %struct.tep_record* %3) #0 {
  %5 = alloca %struct.tep_handle*, align 8
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tep_record*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.trace_seq, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store %struct.tep_handle* %0, %struct.tep_handle** %5, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.tep_record* %3, %struct.tep_record** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %17 = load %struct.tep_record*, %struct.tep_record** %8, align 8
  %18 = getelementptr inbounds %struct.tep_record, %struct.tep_record* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %16, align 8
  %20 = call i32 @trace_seq_init(%struct.trace_seq* %10)
  %21 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %22 = load i8*, i8** %16, align 8
  %23 = call i32 @parse_common_flags(%struct.tep_handle* %21, i8* %22)
  store i32 %23, i32* %9, align 4
  %24 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %25 = load i8*, i8** %16, align 8
  %26 = call i32 @parse_common_pc(%struct.tep_handle* %24, i8* %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* @data_latency_format.lock_depth_exists, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %4
  %30 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = call i32 @parse_common_lock_depth(%struct.tep_handle* %30, i8* %31)
  store i32 %32, i32* %12, align 4
  br label %46

33:                                               ; preds = %4
  %34 = load i32, i32* @data_latency_format.check_lock_depth, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %33
  %37 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %38 = load i8*, i8** %16, align 8
  %39 = call i32 @parse_common_lock_depth(%struct.tep_handle* %37, i8* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store i32 0, i32* @data_latency_format.check_lock_depth, align 4
  br label %44

43:                                               ; preds = %36
  store i32 1, i32* @data_latency_format.lock_depth_exists, align 4
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %33
  br label %46

46:                                               ; preds = %45, %29
  %47 = load i32, i32* @data_latency_format.migrate_disable_exists, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %46
  %50 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %51 = load i8*, i8** %16, align 8
  %52 = call i32 @parse_common_migrate_disable(%struct.tep_handle* %50, i8* %51)
  store i32 %52, i32* %13, align 4
  br label %66

53:                                               ; preds = %46
  %54 = load i32, i32* @data_latency_format.check_migrate_disable, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.tep_handle*, %struct.tep_handle** %5, align 8
  %58 = load i8*, i8** %16, align 8
  %59 = call i32 @parse_common_migrate_disable(%struct.tep_handle* %57, i8* %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 0, i32* @data_latency_format.check_migrate_disable, align 4
  br label %64

63:                                               ; preds = %56
  store i32 1, i32* @data_latency_format.migrate_disable_exists, align 4
  br label %64

64:                                               ; preds = %63, %62
  br label %65

65:                                               ; preds = %64, %53
  br label %66

66:                                               ; preds = %65, %49
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @TRACE_FLAG_HARDIRQ, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @TRACE_FLAG_SOFTIRQ, align 4
  %72 = and i32 %70, %71
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @TRACE_FLAG_IRQS_OFF, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %85

78:                                               ; preds = %66
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @TRACE_FLAG_IRQS_NOSUPPORT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 88, i32 46
  br label %85

85:                                               ; preds = %78, %77
  %86 = phi i32 [ 100, %77 ], [ %84, %78 ]
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @TRACE_FLAG_NEED_RESCHED, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 78, i32 46
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %85
  %96 = load i32, i32* %15, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  br label %110

99:                                               ; preds = %95, %85
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  br label %108

103:                                              ; preds = %99
  %104 = load i32, i32* %15, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 115, i32 46
  br label %108

108:                                              ; preds = %103, %102
  %109 = phi i32 [ 104, %102 ], [ %107, %103 ]
  br label %110

110:                                              ; preds = %108, %98
  %111 = phi i32 [ 72, %98 ], [ %109, %108 ]
  %112 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %92, i32 %111)
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load i32, i32* %11, align 4
  %117 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %120

118:                                              ; preds = %110
  %119 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %120

120:                                              ; preds = %118, %115
  %121 = load i32, i32* @data_latency_format.migrate_disable_exists, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load i32, i32* %13, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %131

128:                                              ; preds = %123
  %129 = load i32, i32* %13, align 4
  %130 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %129)
  br label %131

131:                                              ; preds = %128, %126
  br label %132

132:                                              ; preds = %131, %120
  %133 = load i32, i32* @data_latency_format.lock_depth_exists, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %143

140:                                              ; preds = %135
  %141 = load i32, i32* %12, align 4
  %142 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %141)
  br label %143

143:                                              ; preds = %140, %138
  br label %144

144:                                              ; preds = %143, %132
  %145 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %10, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @TRACE_SEQ__MEM_ALLOC_FAILED, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i64, i64* @TRACE_SEQ__MEM_ALLOC_FAILED, align 8
  %151 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %152 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  br label %162

153:                                              ; preds = %144
  %154 = call i32 @trace_seq_terminate(%struct.trace_seq* %10)
  %155 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %156 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %10, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @trace_seq_puts(%struct.trace_seq* %155, i32 %157)
  %159 = call i32 @trace_seq_destroy(%struct.trace_seq* %10)
  %160 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %161 = call i32 @trace_seq_terminate(%struct.trace_seq* %160)
  br label %162

162:                                              ; preds = %153, %149
  ret void
}

declare dso_local i32 @trace_seq_init(%struct.trace_seq*) #1

declare dso_local i32 @parse_common_flags(%struct.tep_handle*, i8*) #1

declare dso_local i32 @parse_common_pc(%struct.tep_handle*, i8*) #1

declare dso_local i32 @parse_common_lock_depth(%struct.tep_handle*, i8*) #1

declare dso_local i32 @parse_common_migrate_disable(%struct.tep_handle*, i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #1

declare dso_local i32 @trace_seq_terminate(%struct.trace_seq*) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_destroy(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
