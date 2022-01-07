; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_callback_xdr.c_process_op.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_callback_xdr.c_process_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callback_op = type { i64 (%struct.svc_rqst*, %struct.xdr_stream*, i8*)*, i64 (i8*, i8*, %struct.cb_process_state*)*, i64 (%struct.svc_rqst*, %struct.xdr_stream*, i8*)* }
%struct.cb_process_state = type { i32, i64 }
%struct.svc_rqst = type { i32 }
%struct.xdr_stream = type { i64, i64 }

@callback_ops = common dso_local global %struct.callback_op* null, align 8
@NFS4ERR_MINOR_VERS_MISMATCH = common dso_local global i32 0, align 4
@NFS4ERR_OP_ILLEGAL = common dso_local global i32 0, align 4
@OP_CB_ILLEGAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@NFS4ERR_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.svc_rqst*, %struct.xdr_stream*, i8*, %struct.xdr_stream*, i8*, %struct.cb_process_state*)* @process_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @process_op(i32 %0, %struct.svc_rqst* %1, %struct.xdr_stream* %2, i8* %3, %struct.xdr_stream* %4, i8* %5, %struct.cb_process_state* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.svc_rqst*, align 8
  %11 = alloca %struct.xdr_stream*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.xdr_stream*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.cb_process_state*, align 8
  %16 = alloca %struct.callback_op*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %9, align 4
  store %struct.svc_rqst* %1, %struct.svc_rqst** %10, align 8
  store %struct.xdr_stream* %2, %struct.xdr_stream** %11, align 8
  store i8* %3, i8** %12, align 8
  store %struct.xdr_stream* %4, %struct.xdr_stream** %13, align 8
  store i8* %5, i8** %14, align 8
  store %struct.cb_process_state* %6, %struct.cb_process_state** %15, align 8
  %21 = load %struct.callback_op*, %struct.callback_op** @callback_ops, align 8
  %22 = getelementptr inbounds %struct.callback_op, %struct.callback_op* %21, i64 0
  store %struct.callback_op* %22, %struct.callback_op** %16, align 8
  %23 = load %struct.xdr_stream*, %struct.xdr_stream** %11, align 8
  %24 = call i64 @decode_op_hdr(%struct.xdr_stream* %23, i32* %17)
  store i64 %24, i64* %18, align 8
  %25 = load i64, i64* %18, align 8
  %26 = call i64 @unlikely(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = load i64, i64* %18, align 8
  store i64 %29, i64* %8, align 8
  br label %136

30:                                               ; preds = %7
  %31 = load %struct.cb_process_state*, %struct.cb_process_state** %15, align 8
  %32 = getelementptr inbounds %struct.cb_process_state, %struct.cb_process_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %45 [
    i32 0, label %34
    i32 1, label %37
    i32 2, label %41
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* %17, align 4
  %36 = call i64 @preprocess_nfs4_op(i32 %35, %struct.callback_op** %16)
  store i64 %36, i64* %18, align 8
  br label %48

37:                                               ; preds = %30
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %17, align 4
  %40 = call i64 @preprocess_nfs41_op(i32 %38, i32 %39, %struct.callback_op** %16)
  store i64 %40, i64* %18, align 8
  br label %48

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %17, align 4
  %44 = call i64 @preprocess_nfs42_op(i32 %42, i32 %43, %struct.callback_op** %16)
  store i64 %44, i64* %18, align 8
  br label %48

45:                                               ; preds = %30
  %46 = load i32, i32* @NFS4ERR_MINOR_VERS_MISMATCH, align 4
  %47 = call i64 @htonl(i32 %46)
  store i64 %47, i64* %18, align 8
  br label %48

48:                                               ; preds = %45, %41, %37, %34
  %49 = load i64, i64* %18, align 8
  %50 = load i32, i32* @NFS4ERR_OP_ILLEGAL, align 4
  %51 = call i64 @htonl(i32 %50)
  %52 = icmp eq i64 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @OP_CB_ILLEGAL, align 4
  store i32 %54, i32* %17, align 4
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i64, i64* %18, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %108

59:                                               ; preds = %55
  %60 = load %struct.cb_process_state*, %struct.cb_process_state** %15, align 8
  %61 = getelementptr inbounds %struct.cb_process_state, %struct.cb_process_state* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.cb_process_state*, %struct.cb_process_state** %15, align 8
  %66 = getelementptr inbounds %struct.cb_process_state, %struct.cb_process_state* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %18, align 8
  br label %108

68:                                               ; preds = %59
  %69 = load %struct.xdr_stream*, %struct.xdr_stream** %13, align 8
  %70 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.xdr_stream*, %struct.xdr_stream** %13, align 8
  %73 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  store i64 %75, i64* %19, align 8
  %76 = load i64, i64* %19, align 8
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %104

78:                                               ; preds = %68
  %79 = load i64, i64* %19, align 8
  %80 = load i64, i64* @PAGE_SIZE, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %104

82:                                               ; preds = %78
  %83 = load %struct.callback_op*, %struct.callback_op** %16, align 8
  %84 = getelementptr inbounds %struct.callback_op, %struct.callback_op* %83, i32 0, i32 0
  %85 = load i64 (%struct.svc_rqst*, %struct.xdr_stream*, i8*)*, i64 (%struct.svc_rqst*, %struct.xdr_stream*, i8*)** %84, align 8
  %86 = load %struct.svc_rqst*, %struct.svc_rqst** %10, align 8
  %87 = load %struct.xdr_stream*, %struct.xdr_stream** %11, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = call i64 %85(%struct.svc_rqst* %86, %struct.xdr_stream* %87, i8* %88)
  store i64 %89, i64* %18, align 8
  %90 = load i64, i64* %18, align 8
  %91 = icmp eq i64 %90, 0
  %92 = zext i1 %91 to i32
  %93 = call i64 @likely(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %82
  %96 = load %struct.callback_op*, %struct.callback_op** %16, align 8
  %97 = getelementptr inbounds %struct.callback_op, %struct.callback_op* %96, i32 0, i32 1
  %98 = load i64 (i8*, i8*, %struct.cb_process_state*)*, i64 (i8*, i8*, %struct.cb_process_state*)** %97, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = load i8*, i8** %14, align 8
  %101 = load %struct.cb_process_state*, %struct.cb_process_state** %15, align 8
  %102 = call i64 %98(i8* %99, i8* %100, %struct.cb_process_state* %101)
  store i64 %102, i64* %18, align 8
  br label %103

103:                                              ; preds = %95, %82
  br label %107

104:                                              ; preds = %78, %68
  %105 = load i32, i32* @NFS4ERR_RESOURCE, align 4
  %106 = call i64 @htonl(i32 %105)
  store i64 %106, i64* %18, align 8
  br label %107

107:                                              ; preds = %104, %103
  br label %108

108:                                              ; preds = %107, %64, %58
  %109 = load %struct.xdr_stream*, %struct.xdr_stream** %13, align 8
  %110 = load i32, i32* %17, align 4
  %111 = load i64, i64* %18, align 8
  %112 = call i64 @encode_op_hdr(%struct.xdr_stream* %109, i32 %110, i64 %111)
  store i64 %112, i64* %20, align 8
  %113 = load i64, i64* %20, align 8
  %114 = call i64 @unlikely(i64 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %108
  %117 = load i64, i64* %20, align 8
  store i64 %117, i64* %8, align 8
  br label %136

118:                                              ; preds = %108
  %119 = load %struct.callback_op*, %struct.callback_op** %16, align 8
  %120 = getelementptr inbounds %struct.callback_op, %struct.callback_op* %119, i32 0, i32 2
  %121 = load i64 (%struct.svc_rqst*, %struct.xdr_stream*, i8*)*, i64 (%struct.svc_rqst*, %struct.xdr_stream*, i8*)** %120, align 8
  %122 = icmp ne i64 (%struct.svc_rqst*, %struct.xdr_stream*, i8*)* %121, null
  br i1 %122, label %123, label %134

123:                                              ; preds = %118
  %124 = load i64, i64* %18, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %123
  %127 = load %struct.callback_op*, %struct.callback_op** %16, align 8
  %128 = getelementptr inbounds %struct.callback_op, %struct.callback_op* %127, i32 0, i32 2
  %129 = load i64 (%struct.svc_rqst*, %struct.xdr_stream*, i8*)*, i64 (%struct.svc_rqst*, %struct.xdr_stream*, i8*)** %128, align 8
  %130 = load %struct.svc_rqst*, %struct.svc_rqst** %10, align 8
  %131 = load %struct.xdr_stream*, %struct.xdr_stream** %13, align 8
  %132 = load i8*, i8** %14, align 8
  %133 = call i64 %129(%struct.svc_rqst* %130, %struct.xdr_stream* %131, i8* %132)
  store i64 %133, i64* %18, align 8
  br label %134

134:                                              ; preds = %126, %123, %118
  %135 = load i64, i64* %18, align 8
  store i64 %135, i64* %8, align 8
  br label %136

136:                                              ; preds = %134, %116, %28
  %137 = load i64, i64* %8, align 8
  ret i64 %137
}

declare dso_local i64 @decode_op_hdr(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i64 @preprocess_nfs4_op(i32, %struct.callback_op**) #1

declare dso_local i64 @preprocess_nfs41_op(i32, i32, %struct.callback_op**) #1

declare dso_local i64 @preprocess_nfs42_op(i32, i32, %struct.callback_op**) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @encode_op_hdr(%struct.xdr_stream*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
