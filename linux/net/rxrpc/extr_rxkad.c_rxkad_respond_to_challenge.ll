; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_respond_to_challenge.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_rxkad.c_rxkad_respond_to_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_connection = type { i64, %struct.TYPE_15__*, %struct.TYPE_13__, %struct.TYPE_12__, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.rxrpc_key_token** }
%struct.rxrpc_key_token = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.rxkad_challenge = type { i32, i32, i32 }
%struct.rxkad_response = type { %struct.TYPE_14__, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i8**, i8*, i8*, i8*, i8*, i8* }
%struct.rxrpc_skb_priv = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"{%d,%x}\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"chall_no_key\00", align 1
@RX_PROTOCOL_ERROR = common dso_local global i64 0, align 8
@RXKADEXPIRED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"chall_short\00", align 1
@RXKADPACKETSHORT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Rx CHALLENGE %%%u { v=%u n=%u ml=%u }\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"chall_ver\00", align 1
@RXKADINCONSISTENCY = common dso_local global i64 0, align 8
@RXKAD_VERSION = common dso_local global i64 0, align 8
@RXKADLEVELFAIL = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rxrpc_connection*, %struct.sk_buff*, i64*)* @rxkad_respond_to_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rxkad_respond_to_challenge(%struct.rxrpc_connection* %0, %struct.sk_buff* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rxrpc_connection*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.rxrpc_key_token*, align 8
  %9 = alloca %struct.rxkad_challenge, align 4
  %10 = alloca %struct.rxkad_response*, align 8
  %11 = alloca %struct.rxrpc_skb_priv*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.rxrpc_connection* %0, %struct.rxrpc_connection** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64* %2, i64** %7, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %18)
  store %struct.rxrpc_skb_priv* %19, %struct.rxrpc_skb_priv** %11, align 8
  %20 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %21 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %24 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %25, align 8
  %27 = call i32 @key_serial(%struct.TYPE_18__* %26)
  %28 = call i32 @_enter(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %27)
  %29 = call i8* @tracepoint_string(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i8* %29, i8** %12, align 8
  %30 = load i64, i64* @RX_PROTOCOL_ERROR, align 8
  store i64 %30, i64* %16, align 8
  %31 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %32 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  %35 = icmp ne %struct.TYPE_18__* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %3
  br label %235

37:                                               ; preds = %3
  %38 = load i64, i64* @RXKADEXPIRED, align 8
  store i64 %38, i64* %16, align 8
  %39 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %40 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = call i32 @key_validate(%struct.TYPE_18__* %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %244

47:                                               ; preds = %37
  %48 = call i8* @tracepoint_string(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i8* %48, i8** %12, align 8
  %49 = load i64, i64* @RXKADPACKETSHORT, align 8
  store i64 %49, i64* %16, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = call i64 @skb_copy_bits(%struct.sk_buff* %50, i32 4, %struct.rxkad_challenge* %9, i32 12)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %235

54:                                               ; preds = %47
  %55 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %9, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @ntohl(i32 %56)
  store i64 %57, i64* %13, align 8
  %58 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %9, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ntohl(i32 %59)
  store i64 %60, i64* %14, align 8
  %61 = getelementptr inbounds %struct.rxkad_challenge, %struct.rxkad_challenge* %9, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ntohl(i32 %62)
  store i64 %63, i64* %15, align 8
  %64 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %11, align 8
  %65 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = load i64, i64* %15, align 8
  %71 = call i32 @_proto(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %67, i64 %68, i64 %69, i64 %70)
  %72 = call i8* @tracepoint_string(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  store i8* %72, i8** %12, align 8
  %73 = load i64, i64* @RXKADINCONSISTENCY, align 8
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* @RXKAD_VERSION, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %54
  br label %235

78:                                               ; preds = %54
  %79 = load i64, i64* @RXKADLEVELFAIL, align 8
  store i64 %79, i64* %16, align 8
  %80 = load i32, i32* @EACCES, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %17, align 4
  %82 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %83 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %15, align 8
  %87 = icmp slt i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %244

89:                                               ; preds = %78
  %90 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %91 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load %struct.rxrpc_key_token**, %struct.rxrpc_key_token*** %95, align 8
  %97 = getelementptr inbounds %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %96, i64 0
  %98 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %97, align 8
  store %struct.rxrpc_key_token* %98, %struct.rxrpc_key_token** %8, align 8
  %99 = load i32, i32* @GFP_NOFS, align 4
  %100 = call %struct.rxkad_response* @kzalloc(i32 72, i32 %99)
  store %struct.rxkad_response* %100, %struct.rxkad_response** %10, align 8
  %101 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %102 = icmp ne %struct.rxkad_response* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %89
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %248

106:                                              ; preds = %89
  %107 = load i64, i64* @RXKAD_VERSION, align 8
  %108 = call i8* @htonl(i64 %107)
  %109 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %110 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %109, i32 0, i32 3
  store i8* %108, i8** %110, align 8
  %111 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %112 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i8* @htonl(i64 %114)
  %116 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %117 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 5
  store i8* %115, i8** %118, align 8
  %119 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %120 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @htonl(i64 %122)
  %124 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %125 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 4
  store i8* %123, i8** %126, align 8
  %127 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %128 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i8* @htonl(i64 %129)
  %131 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %132 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 3
  store i8* %130, i8** %133, align 8
  %134 = load i64, i64* %14, align 8
  %135 = add nsw i64 %134, 1
  %136 = call i8* @htonl(i64 %135)
  %137 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %138 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  store i8* %136, i8** %139, align 8
  %140 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %141 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i8* @htonl(i64 %143)
  %145 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %146 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 1
  store i8* %144, i8** %147, align 8
  %148 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %8, align 8
  %149 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %148, i32 0, i32 0
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i8* @htonl(i64 %152)
  %154 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %155 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %8, align 8
  %157 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %156, i32 0, i32 0
  %158 = load %struct.TYPE_17__*, %struct.TYPE_17__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = call i8* @htonl(i64 %160)
  %162 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %163 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  %164 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %165 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %164, i32 0, i32 1
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i64 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i8* @htonl(i64 %169)
  %171 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %172 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 0
  store i8* %170, i8** %175, align 8
  %176 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %177 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %176, i32 0, i32 1
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i64 1
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = call i8* @htonl(i64 %181)
  %183 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %184 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load i8**, i8*** %185, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 1
  store i8* %182, i8** %187, align 8
  %188 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %189 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %188, i32 0, i32 1
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i64 2
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i8* @htonl(i64 %193)
  %195 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %196 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 0
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 2
  store i8* %194, i8** %199, align 8
  %200 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %201 = getelementptr inbounds %struct.rxrpc_connection, %struct.rxrpc_connection* %200, i32 0, i32 1
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i64 3
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = call i8* @htonl(i64 %205)
  %207 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %208 = getelementptr inbounds %struct.rxkad_response, %struct.rxkad_response* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i8**, i8*** %209, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 3
  store i8* %206, i8** %211, align 8
  %212 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %213 = call i32 @rxkad_calc_response_checksum(%struct.rxkad_response* %212)
  %214 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %215 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %216 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %8, align 8
  %217 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %216, i32 0, i32 0
  %218 = load %struct.TYPE_17__*, %struct.TYPE_17__** %217, align 8
  %219 = call i32 @rxkad_encrypt_response(%struct.rxrpc_connection* %214, %struct.rxkad_response* %215, %struct.TYPE_17__* %218)
  store i32 %219, i32* %17, align 4
  %220 = load i32, i32* %17, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %106
  %223 = load %struct.rxrpc_connection*, %struct.rxrpc_connection** %5, align 8
  %224 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %11, align 8
  %225 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %224, i32 0, i32 0
  %226 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %227 = load %struct.rxrpc_key_token*, %struct.rxrpc_key_token** %8, align 8
  %228 = getelementptr inbounds %struct.rxrpc_key_token, %struct.rxrpc_key_token* %227, i32 0, i32 0
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %228, align 8
  %230 = call i32 @rxkad_send_response(%struct.rxrpc_connection* %223, %struct.TYPE_16__* %225, %struct.rxkad_response* %226, %struct.TYPE_17__* %229)
  store i32 %230, i32* %17, align 4
  br label %231

231:                                              ; preds = %222, %106
  %232 = load %struct.rxkad_response*, %struct.rxkad_response** %10, align 8
  %233 = call i32 @kfree(%struct.rxkad_response* %232)
  %234 = load i32, i32* %17, align 4
  store i32 %234, i32* %4, align 4
  br label %248

235:                                              ; preds = %77, %53, %36
  %236 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %11, align 8
  %237 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i8*, i8** %12, align 8
  %241 = call i32 @trace_rxrpc_rx_eproto(i32* null, i32 %239, i8* %240)
  %242 = load i32, i32* @EPROTO, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %17, align 4
  br label %244

244:                                              ; preds = %235, %88, %46
  %245 = load i64, i64* %16, align 8
  %246 = load i64*, i64** %7, align 8
  store i64 %245, i64* %246, align 8
  %247 = load i32, i32* %17, align 4
  store i32 %247, i32* %4, align 4
  br label %248

248:                                              ; preds = %244, %231, %103
  %249 = load i32, i32* %4, align 4
  ret i32 %249
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @key_serial(%struct.TYPE_18__*) #1

declare dso_local i8* @tracepoint_string(i8*) #1

declare dso_local i32 @key_validate(%struct.TYPE_18__*) #1

declare dso_local i64 @skb_copy_bits(%struct.sk_buff*, i32, %struct.rxkad_challenge*, i32) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @_proto(i8*, i32, i64, i64, i64) #1

declare dso_local %struct.rxkad_response* @kzalloc(i32, i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @rxkad_calc_response_checksum(%struct.rxkad_response*) #1

declare dso_local i32 @rxkad_encrypt_response(%struct.rxrpc_connection*, %struct.rxkad_response*, %struct.TYPE_17__*) #1

declare dso_local i32 @rxkad_send_response(%struct.rxrpc_connection*, %struct.TYPE_16__*, %struct.rxkad_response*, %struct.TYPE_17__*) #1

declare dso_local i32 @kfree(%struct.rxkad_response*) #1

declare dso_local i32 @trace_rxrpc_rx_eproto(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
