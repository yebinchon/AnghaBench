; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_pr_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_messenger.c_ceph_pr_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_entity_addr = type { i32, %struct.sockaddr_storage }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@addr_str_seq = common dso_local global i32 0, align 4
@ADDR_STR_COUNT_MASK = common dso_local global i32 0, align 4
@addr_str = common dso_local global i8** null, align 8
@MAX_ADDR_STR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"(%d)%pI4:%hu\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"(%d)[%pI6c]:%hu\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"(unknown sockaddr family %hu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ceph_pr_addr(%struct.ceph_entity_addr* %0) #0 {
  %2 = alloca %struct.ceph_entity_addr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sockaddr_storage, align 4
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  store %struct.ceph_entity_addr* %0, %struct.ceph_entity_addr** %2, align 8
  %8 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %2, align 8
  %9 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %8, i32 0, i32 1
  %10 = bitcast %struct.sockaddr_storage* %5 to i8*
  %11 = bitcast %struct.sockaddr_storage* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %12, %struct.sockaddr_in** %6, align 8
  %13 = bitcast %struct.sockaddr_storage* %5 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %13, %struct.sockaddr_in6** %7, align 8
  %14 = call i32 @atomic_inc_return(i32* @addr_str_seq)
  %15 = load i32, i32* @ADDR_STR_COUNT_MASK, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %3, align 4
  %17 = load i8**, i8*** @addr_str, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %4, align 8
  %22 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %52 [
    i32 129, label %24
    i32 128, label %38
  ]

24:                                               ; preds = %1
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @MAX_ADDR_STR_LEN, align 4
  %27 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %2, align 8
  %28 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %31, i32 0, i32 1
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohs(i32 %35)
  %37 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30, i32* %32, i32 %36)
  br label %58

38:                                               ; preds = %1
  %39 = load i8*, i8** %4, align 8
  %40 = load i32, i32* @MAX_ADDR_STR_LEN, align 4
  %41 = load %struct.ceph_entity_addr*, %struct.ceph_entity_addr** %2, align 8
  %42 = getelementptr inbounds %struct.ceph_entity_addr, %struct.ceph_entity_addr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %45, i32 0, i32 1
  %47 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %48 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ntohs(i32 %49)
  %51 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %39, i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32* %46, i32 %50)
  br label %58

52:                                               ; preds = %1
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* @MAX_ADDR_STR_LEN, align 4
  %55 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %5, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %53, i32 %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %38, %24
  %59 = load i8*, i8** %4, align 8
  ret i8* %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @atomic_inc_return(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @ntohs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
