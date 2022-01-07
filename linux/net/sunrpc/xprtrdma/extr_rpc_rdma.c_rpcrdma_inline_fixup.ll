; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_inline_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_rpc_rdma.c_rpcrdma_inline_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, %struct.page**, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8* }
%struct.page = type { i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rpc_rqst*, i8*, i32, i32)* @rpcrdma_inline_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rpcrdma_inline_fixup(%struct.rpc_rqst* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.page**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %19 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  store i8* %17, i8** %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %26 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i8* %24, i8** %30, align 8
  %31 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %32 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %12, align 4
  br label %43

43:                                               ; preds = %41, %4
  %44 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @trace_xprtrdma_fixup(%struct.rpc_rqst* %44, i32 %45, i32 %46)
  %48 = load i32, i32* %12, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %6, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %56 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 3
  %58 = load %struct.page**, %struct.page*** %57, align 8
  %59 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %60 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @PAGE_SHIFT, align 4
  %64 = ashr i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.page*, %struct.page** %58, i64 %65
  store %struct.page** %66, %struct.page*** %14, align 8
  %67 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %68 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @offset_in_page(i32 %70)
  store i32 %71, i32* %15, align 4
  store i64 0, i64* %9, align 8
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %169

74:                                               ; preds = %43
  %75 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %76 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %169

80:                                               ; preds = %74
  %81 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %82 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %7, align 4
  store i32 %89, i32* %16, align 4
  br label %90

90:                                               ; preds = %88, %80
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %91, %92
  %94 = call i32 @PAGE_ALIGN(i32 %93)
  %95 = load i32, i32* @PAGE_SHIFT, align 4
  %96 = ashr i32 %94, %95
  store i32 %96, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %97

97:                                               ; preds = %156, %90
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %159

101:                                              ; preds = %97
  %102 = load i32, i32* @PAGE_SIZE, align 4
  %103 = load i32, i32* %15, align 4
  %104 = sub nsw i32 %102, %103
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %110

108:                                              ; preds = %101
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %108, %101
  %111 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %112 = load i32, i32* %10, align 4
  %113 = load i8*, i8** %6, align 8
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %12, align 4
  %116 = call i32 @trace_xprtrdma_fixup_pg(%struct.rpc_rqst* %111, i32 %112, i8* %113, i32 %114, i32 %115)
  %117 = load %struct.page**, %struct.page*** %14, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.page*, %struct.page** %117, i64 %119
  %121 = load %struct.page*, %struct.page** %120, align 8
  %122 = call i8* @kmap_atomic(%struct.page* %121)
  store i8* %122, i8** %13, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = load i8*, i8** %6, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i32 @memcpy(i8* %126, i8* %127, i32 %128)
  %130 = load %struct.page**, %struct.page*** %14, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.page*, %struct.page** %130, i64 %132
  %134 = load %struct.page*, %struct.page** %133, align 8
  %135 = call i32 @flush_dcache_page(%struct.page* %134)
  %136 = load i8*, i8** %13, align 8
  %137 = call i32 @kunmap_atomic(i8* %136)
  %138 = load i32, i32* %12, align 4
  %139 = load i8*, i8** %6, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i8, i8* %139, i64 %140
  store i8* %141, i8** %6, align 8
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %7, align 4
  %144 = sub nsw i32 %143, %142
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %12, align 4
  %146 = sext i32 %145 to i64
  %147 = load i64, i64* %9, align 8
  %148 = add i64 %147, %146
  store i64 %148, i64* %9, align 8
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %16, align 4
  %151 = sub nsw i32 %150, %149
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %155, label %154

154:                                              ; preds = %110
  br label %159

155:                                              ; preds = %110
  store i32 0, i32* %15, align 4
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %97

159:                                              ; preds = %154, %97
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i32, i32* %8, align 4
  %164 = load i8*, i8** %6, align 8
  %165 = sext i32 %163 to i64
  %166 = sub i64 0, %165
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  store i8* %167, i8** %6, align 8
  br label %168

168:                                              ; preds = %162, %159
  br label %169

169:                                              ; preds = %168, %74, %43
  %170 = load i32, i32* %7, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %172, %169
  %176 = load i8*, i8** %6, align 8
  %177 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %178 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i64 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  store i8* %176, i8** %182, align 8
  %183 = load i8*, i8** %6, align 8
  %184 = load %struct.rpc_rqst*, %struct.rpc_rqst** %5, align 8
  %185 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i64 0
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  store i8* %183, i8** %189, align 8
  br label %190

190:                                              ; preds = %175, %172
  %191 = load i64, i64* %9, align 8
  ret i64 %191
}

declare dso_local i32 @trace_xprtrdma_fixup(%struct.rpc_rqst*, i32, i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @PAGE_ALIGN(i32) #1

declare dso_local i32 @trace_xprtrdma_fixup_pg(%struct.rpc_rqst*, i32, i8*, i32, i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @flush_dcache_page(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
