; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_store_devconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_addrconf.c_ipv6_store_devconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DEVCONF_MAX = common dso_local global i32 0, align 4
@DEVCONF_FORWARDING = common dso_local global i64 0, align 8
@DEVCONF_HOPLIMIT = common dso_local global i64 0, align 8
@DEVCONF_MTU6 = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_REDIRECTS = common dso_local global i64 0, align 8
@DEVCONF_AUTOCONF = common dso_local global i64 0, align 8
@DEVCONF_DAD_TRANSMITS = common dso_local global i64 0, align 8
@DEVCONF_RTR_SOLICITS = common dso_local global i64 0, align 8
@DEVCONF_RTR_SOLICIT_INTERVAL = common dso_local global i64 0, align 8
@DEVCONF_RTR_SOLICIT_MAX_INTERVAL = common dso_local global i64 0, align 8
@DEVCONF_RTR_SOLICIT_DELAY = common dso_local global i64 0, align 8
@DEVCONF_FORCE_MLD_VERSION = common dso_local global i64 0, align 8
@DEVCONF_MLDV1_UNSOLICITED_REPORT_INTERVAL = common dso_local global i64 0, align 8
@DEVCONF_MLDV2_UNSOLICITED_REPORT_INTERVAL = common dso_local global i64 0, align 8
@DEVCONF_USE_TEMPADDR = common dso_local global i64 0, align 8
@DEVCONF_TEMP_VALID_LFT = common dso_local global i64 0, align 8
@DEVCONF_TEMP_PREFERED_LFT = common dso_local global i64 0, align 8
@DEVCONF_REGEN_MAX_RETRY = common dso_local global i64 0, align 8
@DEVCONF_MAX_DESYNC_FACTOR = common dso_local global i64 0, align 8
@DEVCONF_MAX_ADDRESSES = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA_DEFRTR = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA_MIN_HOP_LIMIT = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA_PINFO = common dso_local global i64 0, align 8
@DEVCONF_PROXY_NDP = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_SOURCE_ROUTE = common dso_local global i64 0, align 8
@DEVCONF_DISABLE_IPV6 = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_DAD = common dso_local global i64 0, align 8
@DEVCONF_FORCE_TLLAO = common dso_local global i64 0, align 8
@DEVCONF_NDISC_NOTIFY = common dso_local global i64 0, align 8
@DEVCONF_SUPPRESS_FRAG_NDISC = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA_FROM_LOCAL = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA_MTU = common dso_local global i64 0, align 8
@DEVCONF_IGNORE_ROUTES_WITH_LINKDOWN = common dso_local global i64 0, align 8
@DEVCONF_USE_OIF_ADDRS_ONLY = common dso_local global i64 0, align 8
@DEVCONF_DROP_UNICAST_IN_L2_MULTICAST = common dso_local global i64 0, align 8
@DEVCONF_DROP_UNSOLICITED_NA = common dso_local global i64 0, align 8
@DEVCONF_KEEP_ADDR_ON_DOWN = common dso_local global i64 0, align 8
@DEVCONF_SEG6_ENABLED = common dso_local global i64 0, align 8
@DEVCONF_ENHANCED_DAD = common dso_local global i64 0, align 8
@DEVCONF_ADDR_GEN_MODE = common dso_local global i64 0, align 8
@DEVCONF_DISABLE_POLICY = common dso_local global i64 0, align 8
@DEVCONF_NDISC_TCLASS = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA_RTR_PREF = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA_RT_INFO_MAX_PLEN = common dso_local global i64 0, align 8
@DEVCONF_ACCEPT_RA_RT_INFO_MIN_PLEN = common dso_local global i64 0, align 8
@DEVCONF_MC_FORWARDING = common dso_local global i64 0, align 8
@DEVCONF_OPTIMISTIC_DAD = common dso_local global i64 0, align 8
@DEVCONF_RTR_PROBE_INTERVAL = common dso_local global i64 0, align 8
@DEVCONF_SEG6_REQUIRE_HMAC = common dso_local global i64 0, align 8
@DEVCONF_USE_OPTIMISTIC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipv6_devconf*, i32*, i32)* @ipv6_store_devconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_store_devconf(%struct.ipv6_devconf* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ipv6_devconf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.ipv6_devconf* %0, %struct.ipv6_devconf** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @DEVCONF_MAX, align 4
  %9 = mul nsw i32 %8, 4
  %10 = icmp slt i32 %7, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @memset(i32* %13, i32 0, i32 %14)
  %16 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %17 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %16, i32 0, i32 49
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = load i64, i64* @DEVCONF_FORWARDING, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %18, i32* %21, align 4
  %22 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %23 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %22, i32 0, i32 48
  %24 = load i32, i32* %23, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i64, i64* @DEVCONF_HOPLIMIT, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %24, i32* %27, align 4
  %28 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %29 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %28, i32 0, i32 47
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = load i64, i64* @DEVCONF_MTU6, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %35 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %34, i32 0, i32 46
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i64, i64* @DEVCONF_ACCEPT_RA, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %36, i32* %39, align 4
  %40 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %41 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %40, i32 0, i32 45
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* @DEVCONF_ACCEPT_REDIRECTS, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %47 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %46, i32 0, i32 44
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i64, i64* @DEVCONF_AUTOCONF, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %53 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %52, i32 0, i32 43
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i64, i64* @DEVCONF_DAD_TRANSMITS, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %54, i32* %57, align 4
  %58 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %59 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %58, i32 0, i32 42
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i64, i64* @DEVCONF_RTR_SOLICITS, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %60, i32* %63, align 4
  %64 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %65 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %64, i32 0, i32 41
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @jiffies_to_msecs(i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i64, i64* @DEVCONF_RTR_SOLICIT_INTERVAL, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  store i32 %67, i32* %70, align 4
  %71 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %72 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %71, i32 0, i32 40
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @jiffies_to_msecs(i32 %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i64, i64* @DEVCONF_RTR_SOLICIT_MAX_INTERVAL, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32 %74, i32* %77, align 4
  %78 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %79 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %78, i32 0, i32 39
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @jiffies_to_msecs(i32 %80)
  %82 = load i32*, i32** %5, align 8
  %83 = load i64, i64* @DEVCONF_RTR_SOLICIT_DELAY, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %81, i32* %84, align 4
  %85 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %86 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %85, i32 0, i32 38
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %5, align 8
  %89 = load i64, i64* @DEVCONF_FORCE_MLD_VERSION, align 8
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32 %87, i32* %90, align 4
  %91 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %92 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %91, i32 0, i32 37
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @jiffies_to_msecs(i32 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = load i64, i64* @DEVCONF_MLDV1_UNSOLICITED_REPORT_INTERVAL, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %94, i32* %97, align 4
  %98 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %99 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %98, i32 0, i32 36
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @jiffies_to_msecs(i32 %100)
  %102 = load i32*, i32** %5, align 8
  %103 = load i64, i64* @DEVCONF_MLDV2_UNSOLICITED_REPORT_INTERVAL, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %101, i32* %104, align 4
  %105 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %106 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %105, i32 0, i32 35
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = load i64, i64* @DEVCONF_USE_TEMPADDR, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32 %107, i32* %110, align 4
  %111 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %112 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %111, i32 0, i32 34
  %113 = load i32, i32* %112, align 4
  %114 = load i32*, i32** %5, align 8
  %115 = load i64, i64* @DEVCONF_TEMP_VALID_LFT, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %113, i32* %116, align 4
  %117 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %118 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %117, i32 0, i32 33
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = load i64, i64* @DEVCONF_TEMP_PREFERED_LFT, align 8
  %122 = getelementptr inbounds i32, i32* %120, i64 %121
  store i32 %119, i32* %122, align 4
  %123 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %124 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %123, i32 0, i32 32
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %5, align 8
  %127 = load i64, i64* @DEVCONF_REGEN_MAX_RETRY, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 %125, i32* %128, align 4
  %129 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %130 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %129, i32 0, i32 31
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %5, align 8
  %133 = load i64, i64* @DEVCONF_MAX_DESYNC_FACTOR, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32 %131, i32* %134, align 4
  %135 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %136 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %135, i32 0, i32 30
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %5, align 8
  %139 = load i64, i64* @DEVCONF_MAX_ADDRESSES, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32 %137, i32* %140, align 4
  %141 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %142 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %141, i32 0, i32 29
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %5, align 8
  %145 = load i64, i64* @DEVCONF_ACCEPT_RA_DEFRTR, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32 %143, i32* %146, align 4
  %147 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %148 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %147, i32 0, i32 28
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %5, align 8
  %151 = load i64, i64* @DEVCONF_ACCEPT_RA_MIN_HOP_LIMIT, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32 %149, i32* %152, align 4
  %153 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %154 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %153, i32 0, i32 27
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %5, align 8
  %157 = load i64, i64* @DEVCONF_ACCEPT_RA_PINFO, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32 %155, i32* %158, align 4
  %159 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %160 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %159, i32 0, i32 22
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %5, align 8
  %163 = load i64, i64* @DEVCONF_PROXY_NDP, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32 %161, i32* %164, align 4
  %165 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %166 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %165, i32 0, i32 21
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %5, align 8
  %169 = load i64, i64* @DEVCONF_ACCEPT_SOURCE_ROUTE, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32 %167, i32* %170, align 4
  %171 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %172 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %171, i32 0, i32 17
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %5, align 8
  %175 = load i64, i64* @DEVCONF_DISABLE_IPV6, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32 %173, i32* %176, align 4
  %177 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %178 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %177, i32 0, i32 16
  %179 = load i32, i32* %178, align 4
  %180 = load i32*, i32** %5, align 8
  %181 = load i64, i64* @DEVCONF_ACCEPT_DAD, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  store i32 %179, i32* %182, align 4
  %183 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %184 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %183, i32 0, i32 15
  %185 = load i32, i32* %184, align 4
  %186 = load i32*, i32** %5, align 8
  %187 = load i64, i64* @DEVCONF_FORCE_TLLAO, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  store i32 %185, i32* %188, align 4
  %189 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %190 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %189, i32 0, i32 14
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %5, align 8
  %193 = load i64, i64* @DEVCONF_NDISC_NOTIFY, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32 %191, i32* %194, align 4
  %195 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %196 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %195, i32 0, i32 13
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %5, align 8
  %199 = load i64, i64* @DEVCONF_SUPPRESS_FRAG_NDISC, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32 %197, i32* %200, align 4
  %201 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %202 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %201, i32 0, i32 12
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %5, align 8
  %205 = load i64, i64* @DEVCONF_ACCEPT_RA_FROM_LOCAL, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32 %203, i32* %206, align 4
  %207 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %208 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %207, i32 0, i32 11
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %5, align 8
  %211 = load i64, i64* @DEVCONF_ACCEPT_RA_MTU, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32 %209, i32* %212, align 4
  %213 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %214 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %213, i32 0, i32 10
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %5, align 8
  %217 = load i64, i64* @DEVCONF_IGNORE_ROUTES_WITH_LINKDOWN, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32 %215, i32* %218, align 4
  %219 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %220 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %219, i32 0, i32 9
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %5, align 8
  %223 = load i64, i64* @DEVCONF_USE_OIF_ADDRS_ONLY, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32 %221, i32* %224, align 4
  %225 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %226 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %5, align 8
  %229 = load i64, i64* @DEVCONF_DROP_UNICAST_IN_L2_MULTICAST, align 8
  %230 = getelementptr inbounds i32, i32* %228, i64 %229
  store i32 %227, i32* %230, align 4
  %231 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %232 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = load i32*, i32** %5, align 8
  %235 = load i64, i64* @DEVCONF_DROP_UNSOLICITED_NA, align 8
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32 %233, i32* %236, align 4
  %237 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %238 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %237, i32 0, i32 6
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %5, align 8
  %241 = load i64, i64* @DEVCONF_KEEP_ADDR_ON_DOWN, align 8
  %242 = getelementptr inbounds i32, i32* %240, i64 %241
  store i32 %239, i32* %242, align 4
  %243 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %244 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 4
  %246 = load i32*, i32** %5, align 8
  %247 = load i64, i64* @DEVCONF_SEG6_ENABLED, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  store i32 %245, i32* %248, align 4
  %249 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %250 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %5, align 8
  %253 = load i64, i64* @DEVCONF_ENHANCED_DAD, align 8
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  store i32 %251, i32* %254, align 4
  %255 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %256 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %5, align 8
  %259 = load i64, i64* @DEVCONF_ADDR_GEN_MODE, align 8
  %260 = getelementptr inbounds i32, i32* %258, i64 %259
  store i32 %257, i32* %260, align 4
  %261 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %262 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %5, align 8
  %265 = load i64, i64* @DEVCONF_DISABLE_POLICY, align 8
  %266 = getelementptr inbounds i32, i32* %264, i64 %265
  store i32 %263, i32* %266, align 4
  %267 = load %struct.ipv6_devconf*, %struct.ipv6_devconf** %4, align 8
  %268 = getelementptr inbounds %struct.ipv6_devconf, %struct.ipv6_devconf* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32*, i32** %5, align 8
  %271 = load i64, i64* @DEVCONF_NDISC_TCLASS, align 8
  %272 = getelementptr inbounds i32, i32* %270, i64 %271
  store i32 %269, i32* %272, align 4
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
