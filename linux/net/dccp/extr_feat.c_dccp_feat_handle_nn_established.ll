; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_handle_nn_established.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_feat_handle_nn_established.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.list_head = type { i32 }
%struct.dccp_feat_entry = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { %struct.list_head }

@DCCPO_CONFIRM_R = common dso_local global i64 0, align 8
@FEAT_UNKNOWN = common dso_local global i64 0, align 8
@FEAT_NN = common dso_local global i64 0, align 8
@DCCPO_CHANGE_L = common dso_local global i64 0, align 8
@DCCP_RESET_CODE_TOO_BUSY = common dso_local global i64 0, align 8
@FEAT_CHANGING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Received illegal option %u\0A\00", align 1
@DCCP_RESET_CODE_MANDATORY_ERROR = common dso_local global i64 0, align 8
@DCCP_RESET_CODE_OPTION_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock*, i64, i64, i64, i64*, i64)* @dccp_feat_handle_nn_established to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dccp_feat_handle_nn_established(%struct.sock* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.list_head*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dccp_feat_entry*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_7__, align 8
  store %struct.sock* %0, %struct.sock** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64 %5, i64* %13, align 8
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = call %struct.TYPE_8__* @dccp_sk(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store %struct.list_head* %21, %struct.list_head** %14, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @DCCPO_CONFIRM_R, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %15, align 4
  %26 = load i64, i64* %11, align 8
  %27 = call i64 @dccp_feat_type(i64 %26)
  store i64 %27, i64* %17, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64*, i64** %12, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @dccp_feat_print_opt(i64 %28, i64 %29, i64* %30, i64 %31, i64 %32)
  %34 = load i64, i64* %17, align 8
  %35 = load i64, i64* @FEAT_UNKNOWN, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %6
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  store i64 0, i64* %7, align 8
  br label %153

44:                                               ; preds = %40, %37
  br label %135

45:                                               ; preds = %6
  %46 = load i64, i64* %17, align 8
  %47 = load i64, i64* @FEAT_NN, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i64 0, i64* %7, align 8
  br label %153

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %13, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* %13, align 8
  %56 = icmp ugt i64 %55, 8
  br i1 %56, label %57, label %58

57:                                               ; preds = %54, %51
  br label %135

58:                                               ; preds = %54
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @DCCPO_CHANGE_L, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %91

62:                                               ; preds = %58
  %63 = load i64*, i64** %12, align 8
  %64 = load i64, i64* %13, align 8
  %65 = call i8* @dccp_decode_value_var(i64* %63, i64 %64)
  %66 = ptrtoint i8* %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @dccp_feat_is_valid_nn_val(i64 %68, i64 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %62
  br label %135

74:                                               ; preds = %62
  %75 = load %struct.list_head*, %struct.list_head** %14, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i64 @dccp_feat_push_confirm(%struct.list_head* %75, i64 %76, i32 %77, %struct.TYPE_7__* %18)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %74
  %81 = load %struct.sock*, %struct.sock** %8, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i32, i32* %15, align 4
  %84 = call i64 @dccp_feat_activate(%struct.sock* %81, i64 %82, i32 %83, %struct.TYPE_7__* %18)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80, %74
  %87 = load i64, i64* @DCCP_RESET_CODE_TOO_BUSY, align 8
  store i64 %87, i64* %7, align 8
  br label %153

88:                                               ; preds = %80
  %89 = load %struct.sock*, %struct.sock** %8, align 8
  %90 = call i32 @inet_csk_schedule_ack(%struct.sock* %89)
  br label %134

91:                                               ; preds = %58
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* @DCCPO_CONFIRM_R, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %130

95:                                               ; preds = %91
  %96 = load %struct.list_head*, %struct.list_head** %14, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call %struct.dccp_feat_entry* @dccp_feat_list_lookup(%struct.list_head* %96, i64 %97, i32 %98)
  store %struct.dccp_feat_entry* %99, %struct.dccp_feat_entry** %16, align 8
  %100 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %16, align 8
  %101 = icmp eq %struct.dccp_feat_entry* %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %95
  %103 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %16, align 8
  %104 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @FEAT_CHANGING, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %102, %95
  store i64 0, i64* %7, align 8
  br label %153

109:                                              ; preds = %102
  %110 = load i64*, i64** %12, align 8
  %111 = load i64, i64* %13, align 8
  %112 = call i8* @dccp_decode_value_var(i64* %110, i64 %111)
  %113 = ptrtoint i8* %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i64 %113, i64* %114, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %16, align 8
  %118 = getelementptr inbounds %struct.dccp_feat_entry, %struct.dccp_feat_entry* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %116, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %109
  store i64 0, i64* %7, align 8
  br label %153

123:                                              ; preds = %109
  %124 = load %struct.sock*, %struct.sock** %8, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i32, i32* %15, align 4
  %127 = call i64 @dccp_feat_activate(%struct.sock* %124, i64 %125, i32 %126, %struct.TYPE_7__* %18)
  %128 = load %struct.dccp_feat_entry*, %struct.dccp_feat_entry** %16, align 8
  %129 = call i32 @dccp_feat_list_pop(%struct.dccp_feat_entry* %128)
  br label %133

130:                                              ; preds = %91
  %131 = load i64, i64* %10, align 8
  %132 = call i32 @DCCP_WARN(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %131)
  br label %144

133:                                              ; preds = %123
  br label %134

134:                                              ; preds = %133, %88
  store i64 0, i64* %7, align 8
  br label %153

135:                                              ; preds = %73, %57, %44
  %136 = load i64, i64* %9, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %135
  %139 = load %struct.list_head*, %struct.list_head** %14, align 8
  %140 = load i64, i64* %11, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i64 @dccp_push_empty_confirm(%struct.list_head* %139, i64 %140, i32 %141)
  store i64 %142, i64* %7, align 8
  br label %153

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %130
  %145 = load i64, i64* %9, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = load i64, i64* @DCCP_RESET_CODE_MANDATORY_ERROR, align 8
  br label %151

149:                                              ; preds = %144
  %150 = load i64, i64* @DCCP_RESET_CODE_OPTION_ERROR, align 8
  br label %151

151:                                              ; preds = %149, %147
  %152 = phi i64 [ %148, %147 ], [ %150, %149 ]
  store i64 %152, i64* %7, align 8
  br label %153

153:                                              ; preds = %151, %138, %134, %122, %108, %86, %49, %43
  %154 = load i64, i64* %7, align 8
  ret i64 %154
}

declare dso_local %struct.TYPE_8__* @dccp_sk(%struct.sock*) #1

declare dso_local i64 @dccp_feat_type(i64) #1

declare dso_local i32 @dccp_feat_print_opt(i64, i64, i64*, i64, i64) #1

declare dso_local i8* @dccp_decode_value_var(i64*, i64) #1

declare dso_local i32 @dccp_feat_is_valid_nn_val(i64, i64) #1

declare dso_local i64 @dccp_feat_push_confirm(%struct.list_head*, i64, i32, %struct.TYPE_7__*) #1

declare dso_local i64 @dccp_feat_activate(%struct.sock*, i64, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @inet_csk_schedule_ack(%struct.sock*) #1

declare dso_local %struct.dccp_feat_entry* @dccp_feat_list_lookup(%struct.list_head*, i64, i32) #1

declare dso_local i32 @dccp_feat_list_pop(%struct.dccp_feat_entry*) #1

declare dso_local i32 @DCCP_WARN(i8*, i64) #1

declare dso_local i64 @dccp_push_empty_confirm(%struct.list_head*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
