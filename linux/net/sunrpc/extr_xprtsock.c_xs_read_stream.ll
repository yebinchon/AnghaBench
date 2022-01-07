; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_read_stream.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_read_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i64, i32, i32 }
%struct.msghdr = type { i32, i32 }

@RPC_FRAGMENT_SIZE_MASK = common dso_local global i32 0, align 4
@MSG_TRUNC = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.sock_xprt*, i32)* @xs_read_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @xs_read_stream(%struct.sock_xprt* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.sock_xprt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.msghdr, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.sock_xprt* %0, %struct.sock_xprt** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = bitcast %struct.msghdr* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %12 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %69

16:                                               ; preds = %2
  %17 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %18 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @xs_read_stream_headersize(i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %28 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @xs_read_stream_header(%struct.sock_xprt* %24, %struct.msghdr* %6, i32 %25, i64 %26, i64 %30)
  store i64 %31, i64* %9, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ule i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %16
  br label %187

35:                                               ; preds = %16
  %36 = load i64, i64* %9, align 8
  %37 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %38 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i64 %36, i64* %39, align 8
  %40 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %41 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %48 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %3, align 8
  br label %197

51:                                               ; preds = %35
  %52 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %53 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @be32_to_cpu(i32 %55)
  %57 = load i32, i32* @RPC_FRAGMENT_SIZE_MASK, align 4
  %58 = and i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %61 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %64 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = sub i64 %66, 4
  store i64 %67, i64* %65, align 8
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %8, align 8
  br label %69

69:                                               ; preds = %51, %2
  %70 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %71 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @be32_to_cpu(i32 %73)
  switch i32 %74, label %75 [
    i32 129, label %80
    i32 128, label %84
  ]

75:                                               ; preds = %69
  %76 = load i32, i32* @MSG_TRUNC, align 4
  %77 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %88

80:                                               ; preds = %69
  %81 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %82 = load i32, i32* %5, align 4
  %83 = call i64 @xs_read_stream_call(%struct.sock_xprt* %81, %struct.msghdr* %6, i32 %82)
  store i64 %83, i64* %9, align 8
  br label %88

84:                                               ; preds = %69
  %85 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i64 @xs_read_stream_reply(%struct.sock_xprt* %85, %struct.msghdr* %6, i32 %86)
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %84, %80, %75
  %89 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MSG_TRUNC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = call i32 @cpu_to_be32(i32 -1)
  %96 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %97 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  store i32 %95, i32* %98, align 8
  %99 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %100 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i32 -1, i32* %101, align 8
  br label %102

102:                                              ; preds = %94, %88
  %103 = load i64, i64* %9, align 8
  %104 = icmp ult i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %187

106:                                              ; preds = %102
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* %8, align 8
  %109 = add i64 %108, %107
  store i64 %109, i64* %8, align 8
  %110 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %111 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %115 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ult i64 %113, %117
  br i1 %118, label %119, label %169

119:                                              ; preds = %106
  %120 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @MSG_TRUNC, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %119
  %126 = load i64, i64* %8, align 8
  store i64 %126, i64* %3, align 8
  br label %197

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %6, i32 0, i32 0
  store i32 0, i32* %128, align 4
  %129 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %130 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %134 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %138 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = sub i64 %136, %140
  %142 = trunc i64 %141 to i32
  %143 = call i64 @xs_read_discard(i32 %131, %struct.msghdr* %6, i32 %132, i32 %142)
  store i64 %143, i64* %9, align 8
  %144 = load i64, i64* %9, align 8
  %145 = icmp ule i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %127
  br label %187

147:                                              ; preds = %127
  %148 = load i64, i64* %9, align 8
  %149 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %150 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, %148
  store i64 %153, i64* %151, align 8
  %154 = load i64, i64* %9, align 8
  %155 = load i64, i64* %8, align 8
  %156 = add i64 %155, %154
  store i64 %156, i64* %8, align 8
  %157 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %158 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %162 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %160, %164
  br i1 %165, label %166, label %168

166:                                              ; preds = %147
  %167 = load i64, i64* %8, align 8
  store i64 %167, i64* %3, align 8
  br label %197

168:                                              ; preds = %147
  br label %169

169:                                              ; preds = %168, %106
  %170 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %171 = call i64 @xs_read_stream_request_done(%struct.sock_xprt* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %169
  %174 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %175 = call i32 @trace_xs_stream_read_request(%struct.sock_xprt* %174)
  %176 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %177 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 1
  store i32 0, i32* %178, align 8
  br label %179

179:                                              ; preds = %173, %169
  %180 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %181 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 2
  store i64 0, i64* %182, align 8
  %183 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %184 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %184, i32 0, i32 0
  store i64 0, i64* %185, align 8
  %186 = load i64, i64* %8, align 8
  store i64 %186, i64* %3, align 8
  br label %197

187:                                              ; preds = %146, %105, %34
  %188 = load i64, i64* %9, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = load i64, i64* %9, align 8
  br label %195

192:                                              ; preds = %187
  %193 = load i64, i64* @ESHUTDOWN, align 8
  %194 = sub i64 0, %193
  br label %195

195:                                              ; preds = %192, %190
  %196 = phi i64 [ %191, %190 ], [ %194, %192 ]
  store i64 %196, i64* %3, align 8
  br label %197

197:                                              ; preds = %195, %179, %166, %125, %46
  %198 = load i64, i64* %3, align 8
  ret i64 %198
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @xs_read_stream_headersize(i32) #2

declare dso_local i64 @xs_read_stream_header(%struct.sock_xprt*, %struct.msghdr*, i32, i64, i64) #2

declare dso_local i32 @be32_to_cpu(i32) #2

declare dso_local i64 @xs_read_stream_call(%struct.sock_xprt*, %struct.msghdr*, i32) #2

declare dso_local i64 @xs_read_stream_reply(%struct.sock_xprt*, %struct.msghdr*, i32) #2

declare dso_local i32 @cpu_to_be32(i32) #2

declare dso_local i64 @xs_read_discard(i32, %struct.msghdr*, i32, i32) #2

declare dso_local i64 @xs_read_stream_request_done(%struct.sock_xprt*) #2

declare dso_local i32 @trace_xs_stream_read_request(%struct.sock_xprt*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
