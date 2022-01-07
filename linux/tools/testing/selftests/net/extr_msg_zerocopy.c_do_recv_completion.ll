; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_recv_completion.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_recv_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_extended_err = type { i64, i64, i64, i64, i32 }
%struct.msghdr = type { i8*, i32, i32 }
%struct.cmsghdr = type { i64, i64 }

@PF_RDS = common dso_local global i32 0, align 4
@MSG_ERRQUEUE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"recvmsg notification\00", align 1
@MSG_CTRUNC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"recvmsg notification: truncated\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"cmsg: no cmsg\00", align 1
@SOL_IP = common dso_local global i64 0, align 8
@IP_RECVERR = common dso_local global i64 0, align 8
@SOL_IPV6 = common dso_local global i64 0, align 8
@IPV6_RECVERR = common dso_local global i64 0, align 8
@SOL_PACKET = common dso_local global i64 0, align 8
@PACKET_TX_TIMESTAMP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [24 x i8] c"serr: wrong type: %d.%d\00", align 1
@SO_EE_ORIGIN_ZEROCOPY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"serr: wrong origin: %u\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"serr: wrong error code: %u\00", align 1
@next_completion = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"gap: %u..%u does not append to %u\0A\00", align 1
@SO_EE_CODE_ZEROCOPY_COPIED = common dso_local global i32 0, align 4
@zerocopied = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"serr: inconsistent\0A\00", align 1
@cfg_verbose = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"completed: %u (h=%u l=%u)\0A\00", align 1
@completions = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @do_recv_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_recv_completion(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock_extended_err*, align 8
  %7 = alloca %struct.msghdr, align 8
  %8 = alloca %struct.cmsghdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [100 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %15 = bitcast %struct.msghdr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 16, i1 false)
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PF_RDS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @do_recvmsg_completion(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %185

22:                                               ; preds = %2
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %14, i64 0, i64 0
  %24 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 1
  store i32 100, i32* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MSG_ERRQUEUE, align 4
  %28 = call i32 @recvmsg(i32 %26, %struct.msghdr* %7, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i64, i64* @errno, align 8
  %33 = load i64, i64* @EAGAIN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %185

36:                                               ; preds = %31, %22
  %37 = load i32, i32* %12, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i64, i64* @errno, align 8
  %41 = call i32 (i32, i64, i8*, ...) @error(i32 1, i64 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %36
  %43 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MSG_CTRUNC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i64, i64* @errno, align 8
  %50 = call i32 (i32, i64, i8*, ...) @error(i32 1, i64 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %42
  %52 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %7)
  store %struct.cmsghdr* %52, %struct.cmsghdr** %8, align 8
  %53 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %54 = icmp ne %struct.cmsghdr* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %51
  %56 = call i32 (i32, i64, i8*, ...) @error(i32 1, i64 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %51
  %58 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %59 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SOL_IP, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %65 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IP_RECVERR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %101, label %69

69:                                               ; preds = %63, %57
  %70 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %71 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SOL_IPV6, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %77 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @IPV6_RECVERR, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %101, label %81

81:                                               ; preds = %75, %69
  %82 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %83 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SOL_PACKET, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %89 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @PACKET_TX_TIMESTAMP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %101, label %93

93:                                               ; preds = %87, %81
  %94 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %95 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %98 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i32 (i32, i64, i8*, ...) @error(i32 1, i64 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i64 %96, i64 %99)
  br label %101

101:                                              ; preds = %93, %87, %75, %63
  %102 = load %struct.cmsghdr*, %struct.cmsghdr** %8, align 8
  %103 = call i64 @CMSG_DATA(%struct.cmsghdr* %102)
  %104 = inttoptr i64 %103 to i8*
  %105 = bitcast i8* %104 to %struct.sock_extended_err*
  store %struct.sock_extended_err* %105, %struct.sock_extended_err** %6, align 8
  %106 = load %struct.sock_extended_err*, %struct.sock_extended_err** %6, align 8
  %107 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SO_EE_ORIGIN_ZEROCOPY, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %101
  %112 = load %struct.sock_extended_err*, %struct.sock_extended_err** %6, align 8
  %113 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 (i32, i64, i8*, ...) @error(i32 1, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %114)
  br label %116

116:                                              ; preds = %111, %101
  %117 = load %struct.sock_extended_err*, %struct.sock_extended_err** %6, align 8
  %118 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %116
  %122 = load %struct.sock_extended_err*, %struct.sock_extended_err** %6, align 8
  %123 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (i32, i64, i8*, ...) @error(i32 1, i64 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64 %124)
  br label %126

126:                                              ; preds = %121, %116
  %127 = load %struct.sock_extended_err*, %struct.sock_extended_err** %6, align 8
  %128 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %9, align 8
  %130 = load %struct.sock_extended_err*, %struct.sock_extended_err** %6, align 8
  %131 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  store i64 %132, i64* %10, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = sub nsw i64 %133, %134
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %11, align 8
  %137 = load i64, i64* %10, align 8
  %138 = load i64, i64* @next_completion, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %126
  %141 = load i32, i32* @stderr, align 4
  %142 = load i64, i64* %10, align 8
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* @next_completion, align 8
  %145 = call i32 (i32, i8*, ...) @fprintf(i32 %141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i64 %142, i64 %143, i64 %144)
  br label %146

146:                                              ; preds = %140, %126
  %147 = load i64, i64* %9, align 8
  %148 = add nsw i64 %147, 1
  store i64 %148, i64* @next_completion, align 8
  %149 = load %struct.sock_extended_err*, %struct.sock_extended_err** %6, align 8
  %150 = getelementptr inbounds %struct.sock_extended_err, %struct.sock_extended_err* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @SO_EE_CODE_ZEROCOPY_COPIED, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* @zerocopied, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %161

159:                                              ; preds = %146
  %160 = load i32, i32* %13, align 4
  store i32 %160, i32* @zerocopied, align 4
  br label %170

161:                                              ; preds = %146
  %162 = load i32, i32* @zerocopied, align 4
  %163 = load i32, i32* %13, align 4
  %164 = icmp ne i32 %162, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %161
  %166 = load i32, i32* @stderr, align 4
  %167 = call i32 (i32, i8*, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %168 = load i32, i32* %13, align 4
  store i32 %168, i32* @zerocopied, align 4
  br label %169

169:                                              ; preds = %165, %161
  br label %170

170:                                              ; preds = %169, %159
  %171 = load i32, i32* @cfg_verbose, align 4
  %172 = icmp sge i32 %171, 2
  br i1 %172, label %173, label %179

173:                                              ; preds = %170
  %174 = load i32, i32* @stderr, align 4
  %175 = load i64, i64* %11, align 8
  %176 = load i64, i64* %9, align 8
  %177 = load i64, i64* %10, align 8
  %178 = call i32 (i32, i8*, ...) @fprintf(i32 %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), i64 %175, i64 %176, i64 %177)
  br label %179

179:                                              ; preds = %173, %170
  %180 = load i64, i64* %11, align 8
  %181 = load i32, i32* @completions, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %180
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* @completions, align 4
  store i32 1, i32* %3, align 4
  br label %185

185:                                              ; preds = %179, %35, %19
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @do_recvmsg_completion(i32) #2

declare dso_local i32 @recvmsg(i32, %struct.msghdr*, i32) #2

declare dso_local i32 @error(i32, i64, i8*, ...) #2

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #2

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
