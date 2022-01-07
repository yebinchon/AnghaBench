; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_do_send.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_snd.c_do_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_ll = type { i32, i32, i32 }

@cfg_use_vnet = common dso_local global i32 0, align 4
@cfg_use_dgram = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@cfg_use_bind = common dso_local global i64 0, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@cfg_ifname = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"if_nametoindex\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"write: %u %u\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"tx: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i32)* @do_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_send(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr_ll, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @cfg_use_vnet, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 4
  store i8* %13, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = sub i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %11, %3
  %19 = load i64, i64* @cfg_use_dgram, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load i64, i64* @ETH_HLEN, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %24, i8** %5, align 8
  %25 = load i64, i64* @ETH_HLEN, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %27, %25
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %21, %18
  %31 = load i64, i64* @cfg_use_bind, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @write(i32 %34, i8* %35, i32 %36)
  store i32 %37, i32* %7, align 4
  br label %58

38:                                               ; preds = %30
  %39 = bitcast %struct.sockaddr_ll* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %39, i8 0, i64 12, i1 false)
  %40 = load i32, i32* @ETH_P_IP, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %8, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @cfg_ifname, align 4
  %44 = call i32 @if_nametoindex(i32 %43)
  %45 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %8, i32 0, i32 0
  store i32 %44, i32* %45, align 4
  %46 = getelementptr inbounds %struct.sockaddr_ll, %struct.sockaddr_ll* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %38
  %53 = load i32, i32* %4, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = bitcast %struct.sockaddr_ll* %8 to i8*
  %57 = call i32 @sendto(i32 %53, i8* %54, i32 %55, i32 0, i8* %56, i32 12)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %52, %33
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %62, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %58
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* @stderr, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  ret void
}

declare dso_local i32 @write(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @if_nametoindex(i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local i32 @sendto(i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
