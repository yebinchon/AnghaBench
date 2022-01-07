; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_session_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_session_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i8*, %struct.l2tp_tunnel*, i32 }
%struct.l2tp_tunnel = type { i32, i32, i32 }
%struct.l2tp_session_cfg = type { i32, i32*, i32, i32*, i32, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@L2TP_SESSION_MAGIC = common dso_local global i32 0, align 4
@L2TP_HDR_VER_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"sess %u/%u\00", align 1
@l2tp_build_l2tpv2_header = common dso_local global i32 0, align 4
@l2tp_build_l2tpv3_header = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2tp_session* @l2tp_session_create(i32 %0, %struct.l2tp_tunnel* %1, i8* %2, i8* %3, %struct.l2tp_session_cfg* %4) #0 {
  %6 = alloca %struct.l2tp_session*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.l2tp_tunnel*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.l2tp_session_cfg*, align 8
  %12 = alloca %struct.l2tp_session*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.l2tp_tunnel* %1, %struct.l2tp_tunnel** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.l2tp_session_cfg* %4, %struct.l2tp_session_cfg** %11, align 8
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 144, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.l2tp_session* @kzalloc(i32 %16, i32 %17)
  store %struct.l2tp_session* %18, %struct.l2tp_session** %12, align 8
  %19 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %20 = icmp ne %struct.l2tp_session* %19, null
  br i1 %20, label %21, label %180

21:                                               ; preds = %5
  %22 = load i32, i32* @L2TP_SESSION_MAGIC, align 4
  %23 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %24 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %23, i32 0, i32 25
  store i32 %22, i32* %24, align 8
  %25 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %8, align 8
  %26 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %27 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %26, i32 0, i32 24
  store %struct.l2tp_tunnel* %25, %struct.l2tp_tunnel** %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %31 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %34 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %33, i32 0, i32 23
  store i8* %32, i8** %34, align 8
  %35 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %36 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %35, i32 0, i32 22
  store i64 0, i64* %36, align 8
  %37 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %8, align 8
  %38 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @L2TP_HDR_VER_2, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %21
  %43 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %44 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %43, i32 0, i32 1
  store i32 65535, i32* %44, align 4
  br label %48

45:                                               ; preds = %21
  %46 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %47 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %46, i32 0, i32 1
  store i32 16777215, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %50 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 2
  %53 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %54 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %56 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %55, i32 0, i32 3
  store i32 4, i32* %56, align 4
  %57 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %58 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %57, i32 0, i32 4
  store i32 1, i32* %58, align 8
  %59 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %60 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %59, i32 0, i32 21
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %8, align 8
  %64 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %67 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @sprintf(i32* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %68)
  %70 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %71 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %70, i32 0, i32 20
  %72 = call i32 @skb_queue_head_init(i32* %71)
  %73 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %74 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %73, i32 0, i32 19
  %75 = call i32 @INIT_HLIST_NODE(i32* %74)
  %76 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %77 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %76, i32 0, i32 18
  %78 = call i32 @INIT_HLIST_NODE(i32* %77)
  %79 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %8, align 8
  %80 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %83 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %82, i32 0, i32 16
  store i32 %81, i32* %83, align 8
  %84 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %85 = icmp ne %struct.l2tp_session_cfg* %84, null
  br i1 %85, label %86, label %156

86:                                               ; preds = %48
  %87 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %88 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %87, i32 0, i32 10
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %91 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %90, i32 0, i32 17
  store i32 %89, i32* %91, align 4
  %92 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %93 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %96 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %95, i32 0, i32 16
  store i32 %94, i32* %96, align 8
  %97 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %98 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %101 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %100, i32 0, i32 15
  store i32 %99, i32* %101, align 4
  %102 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %103 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %106 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %105, i32 0, i32 14
  store i32 %104, i32* %106, align 8
  %107 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %108 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %111 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %110, i32 0, i32 13
  store i32 %109, i32* %111, align 4
  %112 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %113 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %116 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %115, i32 0, i32 12
  store i32 %114, i32* %116, align 8
  %117 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %118 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %121 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %120, i32 0, i32 11
  store i32 %119, i32* %121, align 4
  %122 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %123 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %126 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %125, i32 0, i32 10
  store i32 %124, i32* %126, align 8
  %127 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %128 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %127, i32 0, i32 9
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %132 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %136 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @memcpy(i32* %130, i32* %134, i32 %137)
  %139 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %140 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %143 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %142, i32 0, i32 8
  store i32 %141, i32* %143, align 8
  %144 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %145 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %144, i32 0, i32 7
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %149 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load %struct.l2tp_session_cfg*, %struct.l2tp_session_cfg** %11, align 8
  %153 = getelementptr inbounds %struct.l2tp_session_cfg, %struct.l2tp_session_cfg* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @memcpy(i32* %147, i32* %151, i32 %154)
  br label %156

156:                                              ; preds = %86, %48
  %157 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %8, align 8
  %158 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @L2TP_HDR_VER_2, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %156
  %163 = load i32, i32* @l2tp_build_l2tpv2_header, align 4
  %164 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %165 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %164, i32 0, i32 6
  store i32 %163, i32* %165, align 8
  br label %170

166:                                              ; preds = %156
  %167 = load i32, i32* @l2tp_build_l2tpv3_header, align 4
  %168 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %169 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %168, i32 0, i32 6
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %166, %162
  %171 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %172 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %8, align 8
  %173 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @l2tp_session_set_header_len(%struct.l2tp_session* %171, i32 %174)
  %176 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  %177 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %176, i32 0, i32 5
  %178 = call i32 @refcount_set(i32* %177, i32 1)
  %179 = load %struct.l2tp_session*, %struct.l2tp_session** %12, align 8
  store %struct.l2tp_session* %179, %struct.l2tp_session** %6, align 8
  br label %184

180:                                              ; preds = %5
  %181 = load i32, i32* @ENOMEM, align 4
  %182 = sub nsw i32 0, %181
  %183 = call %struct.l2tp_session* @ERR_PTR(i32 %182)
  store %struct.l2tp_session* %183, %struct.l2tp_session** %6, align 8
  br label %184

184:                                              ; preds = %180, %170
  %185 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  ret %struct.l2tp_session* %185
}

declare dso_local %struct.l2tp_session* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @l2tp_session_set_header_len(%struct.l2tp_session*, i32) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local %struct.l2tp_session* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
