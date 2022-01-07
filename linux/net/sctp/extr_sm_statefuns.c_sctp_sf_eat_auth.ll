; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_eat_auth.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_sm_statefuns.c_sctp_sf_eat_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sctp_endpoint = type { i32 }
%struct.sctp_association = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sctp_cmd_seq = type { i32 }
%union.sctp_subtype = type { i32 }
%struct.sctp_chunk = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.sctp_authhdr = type { i32, i32 }
%struct.sctp_ulpevent = type { i32 }

@SCTP_CMD_REPORT_BAD_TAG = common dso_local global i32 0, align 4
@SCTP_ERROR_UNSUP_HMAC = common dso_local global i32 0, align 4
@SCTP_CMD_REPLY = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_NOMEM = common dso_local global i32 0, align 4
@SCTP_AUTH_NEW_KEY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCTP_CMD_EVENT_ULP = common dso_local global i32 0, align 4
@SCTP_DISPOSITION_CONSUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_sf_eat_auth(%struct.net* %0, %struct.sctp_endpoint* %1, %struct.sctp_association* %2, i32 %3, i8* %4, %struct.sctp_cmd_seq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %union.sctp_subtype, align 4
  %9 = alloca %struct.net*, align 8
  %10 = alloca %struct.sctp_endpoint*, align 8
  %11 = alloca %struct.sctp_association*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.sctp_cmd_seq*, align 8
  %14 = alloca %struct.sctp_chunk*, align 8
  %15 = alloca %struct.sctp_authhdr*, align 8
  %16 = alloca %struct.sctp_chunk*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sctp_ulpevent*, align 8
  %19 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  store i32 %3, i32* %19, align 4
  store %struct.net* %0, %struct.net** %9, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %10, align 8
  store %struct.sctp_association* %2, %struct.sctp_association** %11, align 8
  store i8* %4, i8** %12, align 8
  store %struct.sctp_cmd_seq* %5, %struct.sctp_cmd_seq** %13, align 8
  %20 = load i8*, i8** %12, align 8
  %21 = bitcast i8* %20 to %struct.sctp_chunk*
  store %struct.sctp_chunk* %21, %struct.sctp_chunk** %14, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %6
  %28 = load %struct.net*, %struct.net** %9, align 8
  %29 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %30 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %31 = load i8*, i8** %12, align 8
  %32 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %33 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sctp_sf_unk_chunk(%struct.net* %28, %struct.sctp_endpoint* %29, %struct.sctp_association* %30, i32 %34, i8* %31, %struct.sctp_cmd_seq* %32)
  store i32 %35, i32* %7, align 4
  br label %146

36:                                               ; preds = %6
  %37 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %38 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %39 = call i32 @sctp_vtag_verify(%struct.sctp_chunk* %37, %struct.sctp_association* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %54, label %41

41:                                               ; preds = %36
  %42 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %43 = load i32, i32* @SCTP_CMD_REPORT_BAD_TAG, align 4
  %44 = call i32 (...) @SCTP_NULL()
  %45 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %42, i32 %43, i32 %44)
  %46 = load %struct.net*, %struct.net** %9, align 8
  %47 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %48 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %51 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @sctp_sf_pdiscard(%struct.net* %46, %struct.sctp_endpoint* %47, %struct.sctp_association* %48, i32 %52, i8* %49, %struct.sctp_cmd_seq* %50)
  store i32 %53, i32* %7, align 4
  br label %146

54:                                               ; preds = %36
  %55 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %56 = call i32 @sctp_chunk_length_valid(%struct.sctp_chunk* %55, i32 4)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %54
  %59 = load %struct.net*, %struct.net** %9, align 8
  %60 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %61 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %62 = load i8*, i8** %12, align 8
  %63 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %64 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @sctp_sf_violation_chunklen(%struct.net* %59, %struct.sctp_endpoint* %60, %struct.sctp_association* %61, i32 %65, i8* %62, %struct.sctp_cmd_seq* %63)
  store i32 %66, i32* %7, align 4
  br label %146

67:                                               ; preds = %54
  %68 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %69 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.sctp_authhdr*
  store %struct.sctp_authhdr* %73, %struct.sctp_authhdr** %15, align 8
  %74 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %75 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %76 = call i32 @sctp_sf_authenticate(%struct.sctp_association* %74, %struct.sctp_chunk* %75)
  store i32 %76, i32* %17, align 4
  %77 = load i32, i32* %17, align 4
  switch i32 %77, label %114 [
    i32 132, label %78
    i32 131, label %94
    i32 130, label %94
    i32 128, label %103
    i32 129, label %112
  ]

78:                                               ; preds = %67
  %79 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %80 = load %struct.sctp_chunk*, %struct.sctp_chunk** %14, align 8
  %81 = load i32, i32* @SCTP_ERROR_UNSUP_HMAC, align 4
  %82 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %15, align 8
  %83 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %82, i32 0, i32 1
  %84 = call %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association* %79, %struct.sctp_chunk* %80, i32 %81, i32* %83, i32 4, i32 0)
  store %struct.sctp_chunk* %84, %struct.sctp_chunk** %16, align 8
  %85 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %86 = icmp ne %struct.sctp_chunk* %85, null
  br i1 %86, label %87, label %93

87:                                               ; preds = %78
  %88 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %89 = load i32, i32* @SCTP_CMD_REPLY, align 4
  %90 = load %struct.sctp_chunk*, %struct.sctp_chunk** %16, align 8
  %91 = call i32 @SCTP_CHUNK(%struct.sctp_chunk* %90)
  %92 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %88, i32 %89, i32 %91)
  br label %93

93:                                               ; preds = %87, %78
  br label %94

94:                                               ; preds = %67, %67, %93
  %95 = load %struct.net*, %struct.net** %9, align 8
  %96 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %97 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %100 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @sctp_sf_pdiscard(%struct.net* %95, %struct.sctp_endpoint* %96, %struct.sctp_association* %97, i32 %101, i8* %98, %struct.sctp_cmd_seq* %99)
  store i32 %102, i32* %7, align 4
  br label %146

103:                                              ; preds = %67
  %104 = load %struct.net*, %struct.net** %9, align 8
  %105 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %10, align 8
  %106 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %107 = load i8*, i8** %12, align 8
  %108 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %109 = getelementptr inbounds %union.sctp_subtype, %union.sctp_subtype* %8, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @sctp_sf_violation_chunklen(%struct.net* %104, %struct.sctp_endpoint* %105, %struct.sctp_association* %106, i32 %110, i8* %107, %struct.sctp_cmd_seq* %108)
  store i32 %111, i32* %7, align 4
  br label %146

112:                                              ; preds = %67
  %113 = load i32, i32* @SCTP_DISPOSITION_NOMEM, align 4
  store i32 %113, i32* %7, align 4
  br label %146

114:                                              ; preds = %67
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %117 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %15, align 8
  %120 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @ntohs(i32 %121)
  %123 = icmp ne i64 %118, %122
  br i1 %123, label %124, label %144

124:                                              ; preds = %115
  %125 = load %struct.sctp_association*, %struct.sctp_association** %11, align 8
  %126 = load %struct.sctp_authhdr*, %struct.sctp_authhdr** %15, align 8
  %127 = getelementptr inbounds %struct.sctp_authhdr, %struct.sctp_authhdr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @ntohs(i32 %128)
  %130 = load i32, i32* @SCTP_AUTH_NEW_KEY, align 4
  %131 = load i32, i32* @GFP_ATOMIC, align 4
  %132 = call %struct.sctp_ulpevent* @sctp_ulpevent_make_authkey(%struct.sctp_association* %125, i64 %129, i32 %130, i32 %131)
  store %struct.sctp_ulpevent* %132, %struct.sctp_ulpevent** %18, align 8
  %133 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %18, align 8
  %134 = icmp ne %struct.sctp_ulpevent* %133, null
  br i1 %134, label %138, label %135

135:                                              ; preds = %124
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %7, align 4
  br label %146

138:                                              ; preds = %124
  %139 = load %struct.sctp_cmd_seq*, %struct.sctp_cmd_seq** %13, align 8
  %140 = load i32, i32* @SCTP_CMD_EVENT_ULP, align 4
  %141 = load %struct.sctp_ulpevent*, %struct.sctp_ulpevent** %18, align 8
  %142 = call i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent* %141)
  %143 = call i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq* %139, i32 %140, i32 %142)
  br label %144

144:                                              ; preds = %138, %115
  %145 = load i32, i32* @SCTP_DISPOSITION_CONSUME, align 4
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %144, %135, %112, %103, %94, %58, %41, %27
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local i32 @sctp_sf_unk_chunk(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_vtag_verify(%struct.sctp_chunk*, %struct.sctp_association*) #1

declare dso_local i32 @sctp_add_cmd_sf(%struct.sctp_cmd_seq*, i32, i32) #1

declare dso_local i32 @SCTP_NULL(...) #1

declare dso_local i32 @sctp_sf_pdiscard(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_chunk_length_valid(%struct.sctp_chunk*, i32) #1

declare dso_local i32 @sctp_sf_violation_chunklen(%struct.net*, %struct.sctp_endpoint*, %struct.sctp_association*, i32, i8*, %struct.sctp_cmd_seq*) #1

declare dso_local i32 @sctp_sf_authenticate(%struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local %struct.sctp_chunk* @sctp_make_op_error(%struct.sctp_association*, %struct.sctp_chunk*, i32, i32*, i32, i32) #1

declare dso_local i32 @SCTP_CHUNK(%struct.sctp_chunk*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.sctp_ulpevent* @sctp_ulpevent_make_authkey(%struct.sctp_association*, i64, i32, i32) #1

declare dso_local i32 @SCTP_ULPEVENT(%struct.sctp_ulpevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
