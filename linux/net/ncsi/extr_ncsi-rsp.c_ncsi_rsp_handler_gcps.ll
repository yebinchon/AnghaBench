; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_gcps.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-rsp.c_ncsi_rsp_handler_gcps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncsi_request = type { i32, %struct.ncsi_dev_priv* }
%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_rsp_gcps_pkt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ncsi_channel = type { %struct.ncsi_channel_stats }
%struct.ncsi_channel_stats = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ncsi_request*)* @ncsi_rsp_handler_gcps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_rsp_handler_gcps(%struct.ncsi_request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ncsi_request*, align 8
  %4 = alloca %struct.ncsi_rsp_gcps_pkt*, align 8
  %5 = alloca %struct.ncsi_dev_priv*, align 8
  %6 = alloca %struct.ncsi_channel*, align 8
  %7 = alloca %struct.ncsi_channel_stats*, align 8
  store %struct.ncsi_request* %0, %struct.ncsi_request** %3, align 8
  %8 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %9 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %8, i32 0, i32 1
  %10 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %9, align 8
  store %struct.ncsi_dev_priv* %10, %struct.ncsi_dev_priv** %5, align 8
  %11 = load %struct.ncsi_request*, %struct.ncsi_request** %3, align 8
  %12 = getelementptr inbounds %struct.ncsi_request, %struct.ncsi_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @skb_network_header(i32 %13)
  %15 = inttoptr i64 %14 to %struct.ncsi_rsp_gcps_pkt*
  store %struct.ncsi_rsp_gcps_pkt* %15, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %16 = load %struct.ncsi_dev_priv*, %struct.ncsi_dev_priv** %5, align 8
  %17 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %18 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %17, i32 0, i32 41
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv* %16, i32 %21, i32* null, %struct.ncsi_channel** %6)
  %23 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %24 = icmp ne %struct.ncsi_channel* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %277

28:                                               ; preds = %1
  %29 = load %struct.ncsi_channel*, %struct.ncsi_channel** %6, align 8
  %30 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %29, i32 0, i32 0
  store %struct.ncsi_channel_stats* %30, %struct.ncsi_channel_stats** %7, align 8
  %31 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %32 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %31, i32 0, i32 40
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @ntohl(i32 %33)
  %35 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %36 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %35, i32 0, i32 40
  store i8* %34, i8** %36, align 8
  %37 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %38 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %37, i32 0, i32 39
  %39 = load i32, i32* %38, align 4
  %40 = call i8* @ntohl(i32 %39)
  %41 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %42 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %41, i32 0, i32 39
  store i8* %40, i8** %42, align 8
  %43 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %44 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %43, i32 0, i32 38
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @ntohl(i32 %45)
  %47 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %48 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %47, i32 0, i32 38
  store i8* %46, i8** %48, align 8
  %49 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %50 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %49, i32 0, i32 37
  %51 = load i32, i32* %50, align 4
  %52 = call i8* @ntohl(i32 %51)
  %53 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %54 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %53, i32 0, i32 37
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %56 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %55, i32 0, i32 36
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @ntohl(i32 %57)
  %59 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %60 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %59, i32 0, i32 36
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %62 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %61, i32 0, i32 35
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @ntohl(i32 %63)
  %65 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %66 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %65, i32 0, i32 35
  store i8* %64, i8** %66, align 8
  %67 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %68 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %67, i32 0, i32 34
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @ntohl(i32 %69)
  %71 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %72 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %71, i32 0, i32 34
  store i8* %70, i8** %72, align 8
  %73 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %74 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %73, i32 0, i32 33
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @ntohl(i32 %75)
  %77 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %78 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %77, i32 0, i32 33
  store i8* %76, i8** %78, align 8
  %79 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %80 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %79, i32 0, i32 32
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @ntohl(i32 %81)
  %83 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %84 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %83, i32 0, i32 32
  store i8* %82, i8** %84, align 8
  %85 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %86 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %85, i32 0, i32 31
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @ntohl(i32 %87)
  %89 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %90 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %89, i32 0, i32 31
  store i8* %88, i8** %90, align 8
  %91 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %92 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %91, i32 0, i32 30
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @ntohl(i32 %93)
  %95 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %96 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %95, i32 0, i32 30
  store i8* %94, i8** %96, align 8
  %97 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %98 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %97, i32 0, i32 29
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @ntohl(i32 %99)
  %101 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %102 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %101, i32 0, i32 29
  store i8* %100, i8** %102, align 8
  %103 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %104 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %103, i32 0, i32 28
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @ntohl(i32 %105)
  %107 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %108 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %107, i32 0, i32 28
  store i8* %106, i8** %108, align 8
  %109 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %110 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %109, i32 0, i32 27
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @ntohl(i32 %111)
  %113 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %114 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %113, i32 0, i32 27
  store i8* %112, i8** %114, align 8
  %115 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %116 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %115, i32 0, i32 26
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @ntohl(i32 %117)
  %119 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %120 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %119, i32 0, i32 26
  store i8* %118, i8** %120, align 8
  %121 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %122 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %121, i32 0, i32 25
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @ntohl(i32 %123)
  %125 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %126 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %125, i32 0, i32 25
  store i8* %124, i8** %126, align 8
  %127 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %128 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %127, i32 0, i32 24
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @ntohl(i32 %129)
  %131 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %132 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %131, i32 0, i32 24
  store i8* %130, i8** %132, align 8
  %133 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %134 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %133, i32 0, i32 23
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @ntohl(i32 %135)
  %137 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %138 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %137, i32 0, i32 23
  store i8* %136, i8** %138, align 8
  %139 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %140 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %139, i32 0, i32 22
  %141 = load i32, i32* %140, align 4
  %142 = call i8* @ntohl(i32 %141)
  %143 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %144 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %143, i32 0, i32 22
  store i8* %142, i8** %144, align 8
  %145 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %146 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %145, i32 0, i32 21
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @ntohl(i32 %147)
  %149 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %150 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %149, i32 0, i32 21
  store i8* %148, i8** %150, align 8
  %151 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %152 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %151, i32 0, i32 20
  %153 = load i32, i32* %152, align 4
  %154 = call i8* @ntohl(i32 %153)
  %155 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %156 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %155, i32 0, i32 20
  store i8* %154, i8** %156, align 8
  %157 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %158 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %157, i32 0, i32 19
  %159 = load i32, i32* %158, align 4
  %160 = call i8* @ntohl(i32 %159)
  %161 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %162 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %161, i32 0, i32 19
  store i8* %160, i8** %162, align 8
  %163 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %164 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %163, i32 0, i32 18
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @ntohl(i32 %165)
  %167 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %168 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %167, i32 0, i32 18
  store i8* %166, i8** %168, align 8
  %169 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %170 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %169, i32 0, i32 17
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @ntohl(i32 %171)
  %173 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %174 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %173, i32 0, i32 17
  store i8* %172, i8** %174, align 8
  %175 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %176 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %175, i32 0, i32 16
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @ntohl(i32 %177)
  %179 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %180 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %179, i32 0, i32 16
  store i8* %178, i8** %180, align 8
  %181 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %182 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %181, i32 0, i32 15
  %183 = load i32, i32* %182, align 4
  %184 = call i8* @ntohl(i32 %183)
  %185 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %186 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %185, i32 0, i32 15
  store i8* %184, i8** %186, align 8
  %187 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %188 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %187, i32 0, i32 14
  %189 = load i32, i32* %188, align 4
  %190 = call i8* @ntohl(i32 %189)
  %191 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %192 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %191, i32 0, i32 14
  store i8* %190, i8** %192, align 8
  %193 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %194 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %193, i32 0, i32 13
  %195 = load i32, i32* %194, align 4
  %196 = call i8* @ntohl(i32 %195)
  %197 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %198 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %197, i32 0, i32 13
  store i8* %196, i8** %198, align 8
  %199 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %200 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %199, i32 0, i32 12
  %201 = load i32, i32* %200, align 4
  %202 = call i8* @ntohl(i32 %201)
  %203 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %204 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %203, i32 0, i32 12
  store i8* %202, i8** %204, align 8
  %205 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %206 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %205, i32 0, i32 11
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @ntohl(i32 %207)
  %209 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %210 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %209, i32 0, i32 11
  store i8* %208, i8** %210, align 8
  %211 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %212 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %211, i32 0, i32 10
  %213 = load i32, i32* %212, align 4
  %214 = call i8* @ntohl(i32 %213)
  %215 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %216 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %215, i32 0, i32 10
  store i8* %214, i8** %216, align 8
  %217 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %218 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %217, i32 0, i32 9
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @ntohl(i32 %219)
  %221 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %222 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %221, i32 0, i32 9
  store i8* %220, i8** %222, align 8
  %223 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %224 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @ntohl(i32 %225)
  %227 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %228 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %227, i32 0, i32 8
  store i8* %226, i8** %228, align 8
  %229 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %230 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %229, i32 0, i32 7
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @ntohl(i32 %231)
  %233 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %234 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %233, i32 0, i32 7
  store i8* %232, i8** %234, align 8
  %235 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %236 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %235, i32 0, i32 6
  %237 = load i32, i32* %236, align 4
  %238 = call i8* @ntohl(i32 %237)
  %239 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %240 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %239, i32 0, i32 6
  store i8* %238, i8** %240, align 8
  %241 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %242 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = call i8* @ntohl(i32 %243)
  %245 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %246 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %245, i32 0, i32 5
  store i8* %244, i8** %246, align 8
  %247 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %248 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = call i8* @ntohl(i32 %249)
  %251 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %252 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %251, i32 0, i32 4
  store i8* %250, i8** %252, align 8
  %253 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %254 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = call i8* @ntohl(i32 %255)
  %257 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %258 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %257, i32 0, i32 3
  store i8* %256, i8** %258, align 8
  %259 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %260 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 4
  %262 = call i8* @ntohl(i32 %261)
  %263 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %264 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %263, i32 0, i32 2
  store i8* %262, i8** %264, align 8
  %265 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %266 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i8* @ntohl(i32 %267)
  %269 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %270 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %269, i32 0, i32 1
  store i8* %268, i8** %270, align 8
  %271 = load %struct.ncsi_rsp_gcps_pkt*, %struct.ncsi_rsp_gcps_pkt** %4, align 8
  %272 = getelementptr inbounds %struct.ncsi_rsp_gcps_pkt, %struct.ncsi_rsp_gcps_pkt* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 4
  %274 = call i8* @ntohl(i32 %273)
  %275 = load %struct.ncsi_channel_stats*, %struct.ncsi_channel_stats** %7, align 8
  %276 = getelementptr inbounds %struct.ncsi_channel_stats, %struct.ncsi_channel_stats* %275, i32 0, i32 0
  store i8* %274, i8** %276, align 8
  store i32 0, i32* %2, align 4
  br label %277

277:                                              ; preds = %28, %25
  %278 = load i32, i32* %2, align 4
  ret i32 %278
}

declare dso_local i64 @skb_network_header(i32) #1

declare dso_local i32 @ncsi_find_package_and_channel(%struct.ncsi_dev_priv*, i32, i32*, %struct.ncsi_channel**) #1

declare dso_local i8* @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
