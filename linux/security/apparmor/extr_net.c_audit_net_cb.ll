; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_net.c_audit_net_cb.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_net.c_audit_net_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { i32 }
%struct.common_audit_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c" family=\00", align 1
@address_family_names = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"\22unknown(%d)\22\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c" sock_type=\00", align 1
@sock_type_names = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c" protocol=%d\00", align 1
@NET_PERMS_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c" requested_mask=\00", align 1
@net_mask_names = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c" denied_mask=\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c" peer=\00", align 1
@FLAGS_NONE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_net_cb(%struct.audit_buffer* %0, i8* %1) #0 {
  %3 = alloca %struct.audit_buffer*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.common_audit_data*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.common_audit_data*
  store %struct.common_audit_data* %7, %struct.common_audit_data** %5, align 8
  %8 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %9 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load i64*, i64** @address_family_names, align 8
  %11 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %12 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i64, i64* %10, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %22 = load i64*, i64** @address_family_names, align 8
  %23 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %24 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %22, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @audit_log_string(%struct.audit_buffer* %21, i64 %30)
  br label %41

32:                                               ; preds = %2
  %33 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %34 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %35 = getelementptr inbounds %struct.common_audit_data, %struct.common_audit_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %32, %20
  %42 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %43 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %42, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i64*, i64** @sock_type_names, align 8
  %45 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %46 = call %struct.TYPE_8__* @aad(%struct.common_audit_data* %45)
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i64, i64* %44, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %41
  %54 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %55 = load i64*, i64** @sock_type_names, align 8
  %56 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %57 = call %struct.TYPE_8__* @aad(%struct.common_audit_data* %56)
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %55, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @audit_log_string(%struct.audit_buffer* %54, i64 %62)
  br label %72

64:                                               ; preds = %41
  %65 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %66 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %67 = call %struct.TYPE_8__* @aad(%struct.common_audit_data* %66)
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %65, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %70)
  br label %72

72:                                               ; preds = %64, %53
  %73 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %74 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %75 = call %struct.TYPE_8__* @aad(%struct.common_audit_data* %74)
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %73, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  %80 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %81 = call %struct.TYPE_8__* @aad(%struct.common_audit_data* %80)
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @NET_PERMS_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %117

87:                                               ; preds = %72
  %88 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %89 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %88, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %90 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %91 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %92 = call %struct.TYPE_8__* @aad(%struct.common_audit_data* %91)
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @net_mask_names, align 4
  %96 = load i32, i32* @NET_PERMS_MASK, align 4
  %97 = call i32 @aa_audit_perm_mask(%struct.audit_buffer* %90, i32 %94, i32* null, i32 0, i32 %95, i32 %96)
  %98 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %99 = call %struct.TYPE_8__* @aad(%struct.common_audit_data* %98)
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @NET_PERMS_MASK, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %87
  %106 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %107 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %108 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %109 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %110 = call %struct.TYPE_8__* @aad(%struct.common_audit_data* %109)
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @net_mask_names, align 4
  %114 = load i32, i32* @NET_PERMS_MASK, align 4
  %115 = call i32 @aa_audit_perm_mask(%struct.audit_buffer* %108, i32 %112, i32* null, i32 0, i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %105, %87
  br label %117

117:                                              ; preds = %116, %72
  %118 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %119 = call %struct.TYPE_8__* @aad(%struct.common_audit_data* %118)
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %139

123:                                              ; preds = %117
  %124 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %125 = call i32 (%struct.audit_buffer*, i8*, ...) @audit_log_format(%struct.audit_buffer* %124, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %126 = load %struct.audit_buffer*, %struct.audit_buffer** %3, align 8
  %127 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %128 = call %struct.TYPE_8__* @aad(%struct.common_audit_data* %127)
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @labels_ns(i32 %130)
  %132 = load %struct.common_audit_data*, %struct.common_audit_data** %5, align 8
  %133 = call %struct.TYPE_8__* @aad(%struct.common_audit_data* %132)
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load i32, i32* @FLAGS_NONE, align 4
  %137 = load i32, i32* @GFP_ATOMIC, align 4
  %138 = call i32 @aa_label_xaudit(%struct.audit_buffer* %126, i32 %131, i64 %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %123, %117
  ret void
}

declare dso_local i32 @audit_log_format(%struct.audit_buffer*, i8*, ...) #1

declare dso_local i32 @audit_log_string(%struct.audit_buffer*, i64) #1

declare dso_local %struct.TYPE_8__* @aad(%struct.common_audit_data*) #1

declare dso_local i32 @aa_audit_perm_mask(%struct.audit_buffer*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @aa_label_xaudit(%struct.audit_buffer*, i32, i64, i32, i32) #1

declare dso_local i32 @labels_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
