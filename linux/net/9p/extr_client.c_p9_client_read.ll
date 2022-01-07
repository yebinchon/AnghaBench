; ModuleID = '/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_read.c'
source_filename = "/home/carl/AnghaBench/linux/net/9p/extr_client.c_p9_client_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p9_fid = type { i32, i32, %struct.p9_client* }
%struct.p9_client = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iov_iter = type { i32 }
%struct.p9_req_t = type { i32 }

@P9_DEBUG_9P = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c">>> TREAD fid %d offset %llu %d\0A\00", align 1
@P9_IOHDRSZ = common dso_local global i32 0, align 4
@P9_TREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"dqd\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"bogus RREAD count (%d > %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"<<< RREAD count %d\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p9_client_read(%struct.p9_fid* %0, i32 %1, %struct.iov_iter* %2, i32* %3) #0 {
  %5 = alloca %struct.p9_fid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iov_iter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.p9_client*, align 8
  %10 = alloca %struct.p9_req_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store %struct.p9_fid* %0, %struct.p9_fid** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.iov_iter* %2, %struct.iov_iter** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %18 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %17, i32 0, i32 2
  %19 = load %struct.p9_client*, %struct.p9_client** %18, align 8
  store %struct.p9_client* %19, %struct.p9_client** %9, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32*, i32** %8, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32, i32* @P9_DEBUG_9P, align 4
  %22 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %23 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %28 = call i32 @iov_iter_count(%struct.iov_iter* %27)
  %29 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %24, i64 %26, i32 %28)
  br label %30

30:                                               ; preds = %173, %4
  %31 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %32 = call i32 @iov_iter_count(%struct.iov_iter* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %177

34:                                               ; preds = %30
  %35 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %36 = call i32 @iov_iter_count(%struct.iov_iter* %35)
  store i32 %36, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %37 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %38 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %45 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @P9_IOHDRSZ, align 4
  %48 = sub nsw i32 %46, %47
  %49 = icmp sgt i32 %43, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42, %34
  %51 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %52 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @P9_IOHDRSZ, align 4
  %55 = sub nsw i32 %53, %54
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %50, %42
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* %12, align 4
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %60, %56
  %63 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %64 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %62
  %70 = load i32, i32* %13, align 4
  %71 = icmp sgt i32 %70, 1024
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %74 = load i32, i32* @P9_TREAD, align 4
  %75 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %76 = load i32, i32* %13, align 4
  %77 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %78 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call %struct.p9_req_t* @p9_client_zc_rpc(%struct.p9_client* %73, i32 %74, %struct.iov_iter* %75, i32* null, i32 %76, i32 0, i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %79, i32 %80, i32 %81)
  store %struct.p9_req_t* %82, %struct.p9_req_t** %10, align 8
  br label %92

83:                                               ; preds = %69, %62
  store i32 1, i32* %14, align 4
  %84 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %85 = load i32, i32* @P9_TREAD, align 4
  %86 = load %struct.p9_fid*, %struct.p9_fid** %5, align 8
  %87 = getelementptr inbounds %struct.p9_fid, %struct.p9_fid* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %13, align 4
  %91 = call %struct.p9_req_t* @p9_client_rpc(%struct.p9_client* %84, i32 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %88, i32 %89, i32 %90)
  store %struct.p9_req_t* %91, %struct.p9_req_t** %10, align 8
  br label %92

92:                                               ; preds = %83, %72
  %93 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %94 = call i64 @IS_ERR(%struct.p9_req_t* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %98 = call i32 @PTR_ERR(%struct.p9_req_t* %97)
  %99 = load i32*, i32** %8, align 8
  store i32 %98, i32* %99, align 4
  br label %177

100:                                              ; preds = %92
  %101 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %102 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %101, i32 0, i32 0
  %103 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %104 = getelementptr inbounds %struct.p9_client, %struct.p9_client* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @p9pdu_readf(i32* %102, i32 %105, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %12, i8** %15)
  %107 = load i32*, i32** %8, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %100
  %112 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %113 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %114 = getelementptr inbounds %struct.p9_req_t, %struct.p9_req_t* %113, i32 0, i32 0
  %115 = call i32 @trace_9p_protocol_dump(%struct.p9_client* %112, i32* %114)
  %116 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %117 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %118 = call i32 @p9_tag_remove(%struct.p9_client* %116, %struct.p9_req_t* %117)
  br label %177

119:                                              ; preds = %100
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %119
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %124, i32 %125)
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %123, %119
  %129 = load i32, i32* @P9_DEBUG_9P, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 (i32, i8*, i32, ...) @p9_debug(i32 %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %128
  %135 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %136 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %137 = call i32 @p9_tag_remove(%struct.p9_client* %135, %struct.p9_req_t* %136)
  br label %177

138:                                              ; preds = %128
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %138
  %142 = load i8*, i8** %15, align 8
  %143 = load i32, i32* %12, align 4
  %144 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %145 = call i32 @copy_to_iter(i8* %142, i32 %143, %struct.iov_iter* %144)
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %16, align 4
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %11, align 4
  %149 = load i32, i32* %16, align 4
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, %149
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %16, align 4
  %153 = load i32, i32* %12, align 4
  %154 = icmp ne i32 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %141
  %156 = load i32, i32* @EFAULT, align 4
  %157 = sub nsw i32 0, %156
  %158 = load i32*, i32** %8, align 8
  store i32 %157, i32* %158, align 4
  %159 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %160 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %161 = call i32 @p9_tag_remove(%struct.p9_client* %159, %struct.p9_req_t* %160)
  br label %177

162:                                              ; preds = %141
  br label %173

163:                                              ; preds = %138
  %164 = load %struct.iov_iter*, %struct.iov_iter** %7, align 8
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @iov_iter_advance(%struct.iov_iter* %164, i32 %165)
  %167 = load i32, i32* %12, align 4
  %168 = load i32, i32* %11, align 4
  %169 = add nsw i32 %168, %167
  store i32 %169, i32* %11, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, %170
  store i32 %172, i32* %6, align 4
  br label %173

173:                                              ; preds = %163, %162
  %174 = load %struct.p9_client*, %struct.p9_client** %9, align 8
  %175 = load %struct.p9_req_t*, %struct.p9_req_t** %10, align 8
  %176 = call i32 @p9_tag_remove(%struct.p9_client* %174, %struct.p9_req_t* %175)
  br label %30

177:                                              ; preds = %155, %134, %111, %96, %30
  %178 = load i32, i32* %11, align 4
  ret i32 %178
}

declare dso_local i32 @p9_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local %struct.p9_req_t* @p9_client_zc_rpc(%struct.p9_client*, i32, %struct.iov_iter*, i32*, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local %struct.p9_req_t* @p9_client_rpc(%struct.p9_client*, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_req_t*) #1

declare dso_local i32 @p9pdu_readf(i32*, i32, i8*, i32*, i8**) #1

declare dso_local i32 @trace_9p_protocol_dump(%struct.p9_client*, i32*) #1

declare dso_local i32 @p9_tag_remove(%struct.p9_client*, %struct.p9_req_t*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @copy_to_iter(i8*, i32, %struct.iov_iter*) #1

declare dso_local i32 @iov_iter_advance(%struct.iov_iter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
