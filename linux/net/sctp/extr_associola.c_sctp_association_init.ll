; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_association_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_association_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, i32, i32, i32*, i32, i32, %struct.sctp_endpoint*, %struct.TYPE_17__, i32, %struct.TYPE_16__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i8*, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { %struct.sock*, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32 }
%struct.sctp_endpoint = type { %struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_19__ }
%struct.TYPE_11__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.sock = type { i32, i64 }
%struct.sctp_sock = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_12__, i32, %struct.TYPE_20__, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.sctp_paramhdr = type { i32, i32 }

@SCTP_EP_TYPE_ASSOCIATION = common dso_local global i32 0, align 4
@SCTP_STATE_CLOSED = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_T1_COOKIE = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_T1_INIT = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_T2_SHUTDOWN = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_SACK = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@SCTP_EVENT_TIMEOUT_AUTOCLOSE = common dso_local global i64 0, align 8
@SCTP_EVENT_TIMEOUT_NONE = common dso_local global i32 0, align 4
@SCTP_NUM_TIMEOUT_TYPES = common dso_local global i32 0, align 4
@sctp_timer_events = common dso_local global i32* null, align 8
@SCTP_DEFAULT_MINWINDOW = common dso_local global i32 0, align 4
@SCTP_DEFAULT_MAXWINDOW = common dso_local global i32 0, align 4
@sctp_assoc_bh_rcv = common dso_local global i32 0, align 4
@PF_INET6 = common dso_local global i64 0, align 8
@SCTP_PARAM_RANDOM = common dso_local global i32 0, align 4
@SCTP_AUTH_RANDOM_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_association* (%struct.sctp_association*, %struct.sctp_endpoint*, %struct.sock*, i32, i32)* @sctp_association_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_association* @sctp_association_init(%struct.sctp_association* %0, %struct.sctp_endpoint* %1, %struct.sock* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_association*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_endpoint*, align 8
  %9 = alloca %struct.sock*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sctp_sock*, align 8
  %13 = alloca %struct.sctp_paramhdr*, align 8
  %14 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %7, align 8
  store %struct.sctp_endpoint* %1, %struct.sctp_endpoint** %8, align 8
  store %struct.sock* %2, %struct.sock** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.sock*, %struct.sock** %9, align 8
  %16 = call %struct.sctp_sock* @sctp_sk(%struct.sock* %15)
  store %struct.sctp_sock* %16, %struct.sctp_sock** %12, align 8
  %17 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %18 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %19 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %18, i32 0, i32 6
  store %struct.sctp_endpoint* %17, %struct.sctp_endpoint** %19, align 8
  %20 = load %struct.sock*, %struct.sock** %9, align 8
  %21 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %22 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  store %struct.sock* %20, %struct.sock** %23, align 8
  %24 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %25 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %24, i32 0, i32 6
  %26 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %25, align 8
  %27 = call i32 @sctp_endpoint_hold(%struct.sctp_endpoint* %26)
  %28 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %29 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.sock*, %struct.sock** %30, align 8
  %32 = call i32 @sock_hold(%struct.sock* %31)
  %33 = load i32, i32* @SCTP_EP_TYPE_ASSOCIATION, align 4
  %34 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %35 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %34, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 4
  store i32 %33, i32* %36, align 4
  %37 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %38 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %37, i32 0, i32 7
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 3
  %40 = call i32 @refcount_set(i32* %39, i32 1)
  %41 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %42 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %45 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @sctp_bind_addr_init(i32* %43, i32 %48)
  %50 = load i32, i32* @SCTP_STATE_CLOSED, align 4
  %51 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %52 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %51, i32 0, i32 51
  store i32 %50, i32* %52, align 8
  %53 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %54 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %53, i32 0, i32 20
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ms_to_ktime(i32 %56)
  %58 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %59 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %58, i32 0, i32 50
  store i32 %57, i32* %59, align 4
  %60 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %61 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %60, i32 0, i32 21
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %64 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %63, i32 0, i32 49
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %66 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %65, i32 0, i32 20
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %70 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %69, i32 0, i32 48
  store i32 %68, i32* %70, align 4
  %71 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %72 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %71, i32 0, i32 19
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %75 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %74, i32 0, i32 47
  store i32 %73, i32* %75, align 8
  %76 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %77 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %76, i32 0, i32 18
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @msecs_to_jiffies(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %83 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %85 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %84, i32 0, i32 18
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @msecs_to_jiffies(i32 %87)
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %91 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %93 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %92, i32 0, i32 18
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @msecs_to_jiffies(i32 %95)
  %97 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %98 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %97, i32 0, i32 46
  store i8* %96, i8** %98, align 8
  %99 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %100 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %99, i32 0, i32 17
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @msecs_to_jiffies(i32 %101)
  %103 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %104 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %103, i32 0, i32 45
  store i8* %102, i8** %104, align 8
  %105 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %106 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %105, i32 0, i32 16
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %109 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %108, i32 0, i32 44
  store i32 %107, i32* %109, align 8
  %110 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %111 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %110, i32 0, i32 15
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %114 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %113, i32 0, i32 43
  store i32 %112, i32* %114, align 4
  %115 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %116 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %115, i32 0, i32 14
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %119 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %118, i32 0, i32 42
  store i32 %117, i32* %119, align 8
  %120 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %121 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %120, i32 0, i32 13
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @msecs_to_jiffies(i32 %122)
  %124 = ptrtoint i8* %123 to i32
  %125 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %126 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %128 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %127, i32 0, i32 12
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %131 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %130, i32 0, i32 41
  store i32 %129, i32* %131, align 4
  %132 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %133 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %136 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %135, i32 0, i32 40
  store i32 %134, i32* %136, align 8
  %137 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %138 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %141 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %140, i32 0, i32 39
  store i32 %139, i32* %141, align 4
  %142 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %143 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %146 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %145, i32 0, i32 38
  store i32 %144, i32* %146, align 8
  %147 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %148 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %151 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @SCTP_EVENT_TIMEOUT_T1_COOKIE, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32 %149, i32* %154, align 4
  %155 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %156 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %159 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %158, i32 0, i32 3
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* @SCTP_EVENT_TIMEOUT_T1_INIT, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32 %157, i32* %162, align 4
  %163 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %164 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %167 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %166, i32 0, i32 3
  %168 = load i32*, i32** %167, align 8
  %169 = load i64, i64* @SCTP_EVENT_TIMEOUT_T2_SHUTDOWN, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32 %165, i32* %170, align 4
  %171 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %172 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = mul nsw i32 5, %173
  %175 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %176 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %175, i32 0, i32 3
  %177 = load i32*, i32** %176, align 8
  %178 = load i64, i64* @SCTP_EVENT_TIMEOUT_T5_SHUTDOWN_GUARD, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32 %174, i32* %179, align 4
  %180 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %181 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %184 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @SCTP_EVENT_TIMEOUT_SACK, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32 %182, i32* %187, align 4
  %188 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %189 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @HZ, align 4
  %192 = mul nsw i32 %190, %191
  %193 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %194 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = load i64, i64* @SCTP_EVENT_TIMEOUT_AUTOCLOSE, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  store i32 %192, i32* %197, align 4
  %198 = load i32, i32* @SCTP_EVENT_TIMEOUT_NONE, align 4
  store i32 %198, i32* %14, align 4
  br label %199

199:                                              ; preds = %216, %5
  %200 = load i32, i32* %14, align 4
  %201 = load i32, i32* @SCTP_NUM_TIMEOUT_TYPES, align 4
  %202 = icmp slt i32 %200, %201
  br i1 %202, label %203, label %219

203:                                              ; preds = %199
  %204 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %205 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %204, i32 0, i32 37
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %14, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32*, i32** @sctp_timer_events, align 8
  %211 = load i32, i32* %14, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @timer_setup(i32* %209, i32 %214, i32 0)
  br label %216

216:                                              ; preds = %203
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  br label %199

219:                                              ; preds = %199
  %220 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %221 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %220, i32 0, i32 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 3
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %225 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %224, i32 0, i32 9
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 7
  store i32 %223, i32* %226, align 8
  %227 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %228 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %227, i32 0, i32 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %232 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %231, i32 0, i32 9
  %233 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %232, i32 0, i32 3
  store i32 %230, i32* %233, align 8
  %234 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %235 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %234, i32 0, i32 8
  %236 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %239 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %238, i32 0, i32 36
  store i32 %237, i32* %239, align 8
  %240 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %241 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %240, i32 0, i32 8
  %242 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i8* @msecs_to_jiffies(i32 %243)
  %245 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %246 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %245, i32 0, i32 35
  store i8* %244, i8** %246, align 8
  %247 = load %struct.sock*, %struct.sock** %9, align 8
  %248 = getelementptr inbounds %struct.sock, %struct.sock* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sdiv i32 %249, 2
  %251 = load i32, i32* @SCTP_DEFAULT_MINWINDOW, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %257

253:                                              ; preds = %219
  %254 = load i32, i32* @SCTP_DEFAULT_MINWINDOW, align 4
  %255 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %256 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %255, i32 0, i32 4
  store i32 %254, i32* %256, align 8
  br label %264

257:                                              ; preds = %219
  %258 = load %struct.sock*, %struct.sock** %9, align 8
  %259 = getelementptr inbounds %struct.sock, %struct.sock* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = sdiv i32 %260, 2
  %262 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %263 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 8
  br label %264

264:                                              ; preds = %257, %253
  %265 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %266 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %269 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %268, i32 0, i32 5
  store i32 %267, i32* %269, align 4
  %270 = load i32, i32* @SCTP_DEFAULT_MAXWINDOW, align 4
  %271 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %272 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %271, i32 0, i32 20
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 5
  store i32 %270, i32* %273, align 4
  %274 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %275 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %274, i32 0, i32 34
  %276 = call i32 @atomic_set(i32* %275, i32 0)
  %277 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %278 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %277, i32 0, i32 33
  %279 = call i32 @init_waitqueue_head(i32* %278)
  %280 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %281 = call i32 @sctp_generate_tag(%struct.sctp_endpoint* %280)
  %282 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %283 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %282, i32 0, i32 9
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 6
  store i32 %281, i32* %284, align 4
  %285 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %286 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %285, i32 0, i32 4
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %291 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %290, i32 0, i32 9
  %292 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %291, i32 0, i32 5
  store i32 %289, i32* %292, align 8
  %293 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %294 = call i64 @sctp_generate_tsn(%struct.sctp_endpoint* %293)
  %295 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %296 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %295, i32 0, i32 9
  %297 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %296, i32 0, i32 4
  store i64 %294, i64* %297, align 8
  %298 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %299 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %298, i32 0, i32 9
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 4
  %301 = load i64, i64* %300, align 8
  %302 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %303 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %302, i32 0, i32 32
  store i64 %301, i64* %303, align 8
  %304 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %305 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %304, i32 0, i32 32
  %306 = load i64, i64* %305, align 8
  %307 = sub nsw i64 %306, 1
  %308 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %309 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %308, i32 0, i32 28
  store i64 %307, i64* %309, align 8
  %310 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %311 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %310, i32 0, i32 28
  %312 = load i64, i64* %311, align 8
  %313 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %314 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %313, i32 0, i32 31
  store i64 %312, i64* %314, align 8
  %315 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %316 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %315, i32 0, i32 28
  %317 = load i64, i64* %316, align 8
  %318 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %319 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %318, i32 0, i32 30
  store i64 %317, i64* %319, align 8
  %320 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %321 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %320, i32 0, i32 28
  %322 = load i64, i64* %321, align 8
  %323 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %324 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %323, i32 0, i32 29
  store i64 %322, i64* %324, align 8
  %325 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %326 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %325, i32 0, i32 9
  %327 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %326, i32 0, i32 4
  %328 = load i64, i64* %327, align 8
  %329 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %330 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %329, i32 0, i32 27
  store i64 %328, i64* %330, align 8
  %331 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %332 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %331, i32 0, i32 9
  %333 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i32 0, i32 4
  %334 = load i64, i64* %333, align 8
  %335 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %336 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %335, i32 0, i32 26
  store i64 %334, i64* %336, align 8
  %337 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %338 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %337, i32 0, i32 25
  %339 = call i32 @INIT_LIST_HEAD(i32* %338)
  %340 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %341 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %340, i32 0, i32 24
  %342 = call i32 @INIT_LIST_HEAD(i32* %341)
  %343 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %344 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %343, i32 0, i32 20
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 4
  %346 = call i32 @INIT_LIST_HEAD(i32* %345)
  %347 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %348 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %347, i32 0, i32 20
  %349 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i32 0, i32 0
  store i32 1, i32* %349, align 8
  %350 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %351 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %350, i32 0, i32 20
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 1
  store i32 1, i32* %352, align 4
  %353 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %354 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %353, i32 0, i32 7
  %355 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %354, i32 0, i32 1
  %356 = call i32 @sctp_inq_init(i32* %355)
  %357 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %358 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %357, i32 0, i32 7
  %359 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %358, i32 0, i32 1
  %360 = load i32, i32* @sctp_assoc_bh_rcv, align 4
  %361 = call i32 @sctp_inq_set_th_handler(i32* %359, i32 %360)
  %362 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %363 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %364 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %363, i32 0, i32 23
  %365 = call i32 @sctp_outq_init(%struct.sctp_association* %362, i32* %364)
  %366 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %367 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %366, i32 0, i32 22
  %368 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %369 = call i32 @sctp_ulpq_init(i32* %367, %struct.sctp_association* %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %372, label %371

371:                                              ; preds = %264
  br label %524

372:                                              ; preds = %264
  %373 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %374 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %373, i32 0, i32 8
  %375 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %376 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %375, i32 0, i32 9
  %377 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %376, i32 0, i32 3
  %378 = load i32, i32* %377, align 8
  %379 = load i32, i32* %11, align 4
  %380 = call i64 @sctp_stream_init(i32* %374, i32 %378, i32 0, i32 %379)
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %372
  br label %524

383:                                              ; preds = %372
  %384 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %385 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %384, i32 0, i32 7
  %386 = load i32, i32* %385, align 4
  %387 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %388 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %387, i32 0, i32 21
  store i32 %386, i32* %388, align 8
  %389 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %390 = call i32 @sctp_assoc_update_frag_point(%struct.sctp_association* %389)
  %391 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %392 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %391, i32 0, i32 20
  %393 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %392, i32 0, i32 2
  store i32 1, i32* %393, align 8
  %394 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %395 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %394, i32 0, i32 7
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 0
  %397 = load %struct.sock*, %struct.sock** %396, align 8
  %398 = getelementptr inbounds %struct.sock, %struct.sock* %397, i32 0, i32 1
  %399 = load i64, i64* %398, align 8
  %400 = load i64, i64* @PF_INET6, align 8
  %401 = icmp eq i64 %399, %400
  br i1 %401, label %402, label %406

402:                                              ; preds = %383
  %403 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %404 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %403, i32 0, i32 20
  %405 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %404, i32 0, i32 3
  store i32 1, i32* %405, align 4
  br label %406

406:                                              ; preds = %402, %383
  %407 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %408 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %407, i32 0, i32 19
  %409 = call i32 @INIT_LIST_HEAD(i32* %408)
  %410 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %411 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %410, i32 0, i32 6
  %412 = load i32, i32* %411, align 4
  %413 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %414 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %413, i32 0, i32 18
  store i32 %412, i32* %414, align 8
  %415 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %416 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %415, i32 0, i32 5
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %419 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %418, i32 0, i32 17
  store i32 %417, i32* %419, align 4
  %420 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %421 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %420, i32 0, i32 4
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %424 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %423, i32 0, i32 16
  store i32 %422, i32* %424, align 8
  %425 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %426 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %429 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %428, i32 0, i32 15
  store i32 %427, i32* %429, align 4
  %430 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %431 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %434 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %433, i32 0, i32 14
  store i32 %432, i32* %434, align 8
  %435 = load %struct.sctp_sock*, %struct.sctp_sock** %12, align 8
  %436 = getelementptr inbounds %struct.sctp_sock, %struct.sctp_sock* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %439 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %438, i32 0, i32 13
  store i32 %437, i32* %439, align 4
  %440 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %441 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %440, i32 0, i32 12
  %442 = call i32 @INIT_LIST_HEAD(i32* %441)
  %443 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %444 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %445 = load i32, i32* %11, align 4
  %446 = call i64 @sctp_auth_asoc_copy_shkeys(%struct.sctp_endpoint* %443, %struct.sctp_association* %444, i32 %445)
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %448, label %449

448:                                              ; preds = %406
  br label %520

449:                                              ; preds = %406
  %450 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %451 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %450, i32 0, i32 3
  %452 = load i32, i32* %451, align 4
  %453 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %454 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %453, i32 0, i32 11
  store i32 %452, i32* %454, align 4
  %455 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %456 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %459 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %458, i32 0, i32 10
  store i32 %457, i32* %459, align 8
  %460 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %461 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %460, i32 0, i32 1
  %462 = load %struct.TYPE_11__*, %struct.TYPE_11__** %461, align 8
  %463 = icmp ne %struct.TYPE_11__* %462, null
  br i1 %463, label %464, label %480

464:                                              ; preds = %449
  %465 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %466 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %465, i32 0, i32 9
  %467 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %466, i32 0, i32 2
  %468 = load i32, i32* %467, align 4
  %469 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %470 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %469, i32 0, i32 1
  %471 = load %struct.TYPE_11__*, %struct.TYPE_11__** %470, align 8
  %472 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %473 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %472, i32 0, i32 1
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %474, i32 0, i32 0
  %476 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = call i32 @ntohs(i32 %477)
  %479 = call i32 @memcpy(i32 %468, %struct.TYPE_11__* %471, i32 %478)
  br label %480

480:                                              ; preds = %464, %449
  %481 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %482 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %481, i32 0, i32 0
  %483 = load %struct.TYPE_11__*, %struct.TYPE_11__** %482, align 8
  %484 = icmp ne %struct.TYPE_11__* %483, null
  br i1 %484, label %485, label %501

485:                                              ; preds = %480
  %486 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %487 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %486, i32 0, i32 9
  %488 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %487, i32 0, i32 1
  %489 = load i32, i32* %488, align 8
  %490 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %491 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %490, i32 0, i32 0
  %492 = load %struct.TYPE_11__*, %struct.TYPE_11__** %491, align 8
  %493 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %8, align 8
  %494 = getelementptr inbounds %struct.sctp_endpoint, %struct.sctp_endpoint* %493, i32 0, i32 0
  %495 = load %struct.TYPE_11__*, %struct.TYPE_11__** %494, align 8
  %496 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %496, i32 0, i32 0
  %498 = load i32, i32* %497, align 4
  %499 = call i32 @ntohs(i32 %498)
  %500 = call i32 @memcpy(i32 %489, %struct.TYPE_11__* %492, i32 %499)
  br label %501

501:                                              ; preds = %485, %480
  %502 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %503 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %502, i32 0, i32 9
  %504 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %503, i32 0, i32 0
  %505 = load i64, i64* %504, align 8
  %506 = inttoptr i64 %505 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %506, %struct.sctp_paramhdr** %13, align 8
  %507 = load i32, i32* @SCTP_PARAM_RANDOM, align 4
  %508 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %13, align 8
  %509 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %508, i32 0, i32 1
  store i32 %507, i32* %509, align 4
  %510 = load i64, i64* @SCTP_AUTH_RANDOM_LENGTH, align 8
  %511 = add i64 8, %510
  %512 = call i32 @htons(i64 %511)
  %513 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %13, align 8
  %514 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %513, i32 0, i32 0
  store i32 %512, i32* %514, align 4
  %515 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %13, align 8
  %516 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %515, i64 1
  %517 = load i64, i64* @SCTP_AUTH_RANDOM_LENGTH, align 8
  %518 = call i32 @get_random_bytes(%struct.sctp_paramhdr* %516, i64 %517)
  %519 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  store %struct.sctp_association* %519, %struct.sctp_association** %6, align 8
  br label %534

520:                                              ; preds = %448
  %521 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %522 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %521, i32 0, i32 8
  %523 = call i32 @sctp_stream_free(i32* %522)
  br label %524

524:                                              ; preds = %520, %382, %371
  %525 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %526 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %525, i32 0, i32 7
  %527 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %526, i32 0, i32 0
  %528 = load %struct.sock*, %struct.sock** %527, align 8
  %529 = call i32 @sock_put(%struct.sock* %528)
  %530 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %531 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %530, i32 0, i32 6
  %532 = load %struct.sctp_endpoint*, %struct.sctp_endpoint** %531, align 8
  %533 = call i32 @sctp_endpoint_put(%struct.sctp_endpoint* %532)
  store %struct.sctp_association* null, %struct.sctp_association** %6, align 8
  br label %534

534:                                              ; preds = %524, %501
  %535 = load %struct.sctp_association*, %struct.sctp_association** %6, align 8
  ret %struct.sctp_association* %535
}

declare dso_local %struct.sctp_sock* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @sctp_endpoint_hold(%struct.sctp_endpoint*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @sctp_bind_addr_init(i32*, i32) #1

declare dso_local i32 @ms_to_ktime(i32) #1

declare dso_local i8* @msecs_to_jiffies(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @sctp_generate_tag(%struct.sctp_endpoint*) #1

declare dso_local i64 @sctp_generate_tsn(%struct.sctp_endpoint*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @sctp_inq_init(i32*) #1

declare dso_local i32 @sctp_inq_set_th_handler(i32*, i32) #1

declare dso_local i32 @sctp_outq_init(%struct.sctp_association*, i32*) #1

declare dso_local i32 @sctp_ulpq_init(i32*, %struct.sctp_association*) #1

declare dso_local i64 @sctp_stream_init(i32*, i32, i32, i32) #1

declare dso_local i32 @sctp_assoc_update_frag_point(%struct.sctp_association*) #1

declare dso_local i64 @sctp_auth_asoc_copy_shkeys(%struct.sctp_endpoint*, %struct.sctp_association*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @get_random_bytes(%struct.sctp_paramhdr*, i64) #1

declare dso_local i32 @sctp_stream_free(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @sctp_endpoint_put(%struct.sctp_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
