; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_proc.c_sctp_assocs_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_proc.c_sctp_assocs_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.sctp_transport = type { %struct.sctp_association* }
%struct.sctp_association = type { i32, i32, i32, i32, %struct.TYPE_7__, i32, %struct.TYPE_6__, i32, i32, i32, i32, %struct.sctp_ep_common }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.sctp_ep_common = type { %struct.TYPE_5__, %struct.sock* }
%struct.TYPE_5__ = type { i32 }
%struct.sock = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [162 x i8] c" ASSOC     SOCK   STY SST ST HBKT ASSOC-ID TX_QUEUE RX_QUEUE UID INODE LPORT RPORT LADDRS <-> RADDRS HBINT INS OUTS MAXRT T1X T2X RTXC wmema wmemq sndbuf rcvbuf\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"%8pK %8pK %-3d %-3d %-2d %-4d %4d %8d %8d %7u %5lu %-5d %5d \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"<-> \00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"\09%8lu %5d %5d %4d %4d %4d %8d %8d %8d %8d %8d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @sctp_assocs_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_assocs_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sctp_transport*, align 8
  %7 = alloca %struct.sctp_association*, align 8
  %8 = alloca %struct.sctp_ep_common*, align 8
  %9 = alloca %struct.sock*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %12 = icmp eq i8* %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %116

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.sctp_transport*
  store %struct.sctp_transport* %18, %struct.sctp_transport** %6, align 8
  %19 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %20 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %19, i32 0, i32 0
  %21 = load %struct.sctp_association*, %struct.sctp_association** %20, align 8
  store %struct.sctp_association* %21, %struct.sctp_association** %7, align 8
  %22 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 11
  store %struct.sctp_ep_common* %23, %struct.sctp_ep_common** %8, align 8
  %24 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %8, align 8
  %25 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %24, i32 0, i32 1
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  store %struct.sock* %26, %struct.sock** %9, align 8
  %27 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %28 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %29 = load %struct.sock*, %struct.sock** %9, align 8
  %30 = load %struct.sock*, %struct.sock** %9, align 8
  %31 = call %struct.TYPE_8__* @sctp_sk(%struct.sock* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sock*, %struct.sock** %9, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %38 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %41 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %40, i32 0, i32 9
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %44 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %47 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %46, i32 0, i32 7
  %48 = call i32 @atomic_read(i32* %47)
  %49 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %50 = call i32 @seq_user_ns(%struct.seq_file* %49)
  %51 = load %struct.sock*, %struct.sock** %9, align 8
  %52 = call i32 @sock_i_uid(%struct.sock* %51)
  %53 = call i32 @from_kuid_munged(i32 %50, i32 %52)
  %54 = load %struct.sock*, %struct.sock** %9, align 8
  %55 = call i32 @sock_i_ino(%struct.sock* %54)
  %56 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %8, align 8
  %57 = getelementptr inbounds %struct.sctp_ep_common, %struct.sctp_ep_common* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %61 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %27, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), %struct.sctp_association* %28, %struct.sock* %29, i32 %33, i32 %36, i32 %39, i32 0, i32 %42, i32 %45, i32 %48, i32 %53, i32 %55, i32 %59, i32 %63)
  %65 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %66 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %68 = load %struct.sctp_ep_common*, %struct.sctp_ep_common** %8, align 8
  %69 = call i32 @sctp_seq_dump_local_addrs(%struct.seq_file* %67, %struct.sctp_ep_common* %68)
  %70 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %71 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %70, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %72 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %73 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %74 = call i32 @sctp_seq_dump_remote_addrs(%struct.seq_file* %72, %struct.sctp_association* %73)
  %75 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %76 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %77 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %80 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %84 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %83, i32 0, i32 4
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %88 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %91 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %94 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sctp_association*, %struct.sctp_association** %7, align 8
  %97 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.sock*, %struct.sock** %9, align 8
  %100 = getelementptr inbounds %struct.sock, %struct.sock* %99, i32 0, i32 3
  %101 = call i32 @refcount_read(i32* %100)
  %102 = load %struct.sock*, %struct.sock** %9, align 8
  %103 = getelementptr inbounds %struct.sock, %struct.sock* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.sock*, %struct.sock** %9, align 8
  %106 = getelementptr inbounds %struct.sock, %struct.sock* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.sock*, %struct.sock** %9, align 8
  %109 = getelementptr inbounds %struct.sock, %struct.sock* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %78, i32 %82, i32 %86, i32 %89, i32 %92, i32 %95, i32 %98, i32 %101, i32 %104, i32 %107, i32 %110)
  %112 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %113 = call i32 (%struct.seq_file*, i8*, ...) @seq_printf(%struct.seq_file* %112, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %114 = load %struct.sctp_transport*, %struct.sctp_transport** %6, align 8
  %115 = call i32 @sctp_transport_put(%struct.sctp_transport* %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %16, %13
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, ...) #1

declare dso_local %struct.TYPE_8__* @sctp_sk(%struct.sock*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @from_kuid_munged(i32, i32) #1

declare dso_local i32 @seq_user_ns(%struct.seq_file*) #1

declare dso_local i32 @sock_i_uid(%struct.sock*) #1

declare dso_local i32 @sock_i_ino(%struct.sock*) #1

declare dso_local i32 @sctp_seq_dump_local_addrs(%struct.seq_file*, %struct.sctp_ep_common*) #1

declare dso_local i32 @sctp_seq_dump_remote_addrs(%struct.seq_file*, %struct.sctp_association*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
