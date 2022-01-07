; ModuleID = '/home/carl/AnghaBench/linux/samples/bpf/extr_test_map_in_map_user.c_test_map_in_map.c'
source_filename = "/home/carl/AnghaBench/linux/samples/bpf/extr_test_map_in_map_user.c_test_map_in_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }
%struct.sockaddr = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@NR_TESTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@test_names = common dso_local global i8** null, align 8
@errno = common dso_local global i64 0, align 8
@EBADF = common dso_local global i64 0, align 8
@REG_RESULT_H = common dso_local global i32 0, align 4
@INLINE_RESULT_H = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Error. result:%d inline_result:%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Pass\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_map_in_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_map_in_map() #0 {
  %1 = alloca %struct.sockaddr_in6, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = bitcast %struct.sockaddr_in6* %1 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %1, i32 0, i32 2
  %11 = load i32, i32* @AF_INET6, align 4
  store i32 %11, i32* %10, align 8
  store i32 0, i32* %2, align 4
  store i32 -87117812, i32* %6, align 4
  %12 = call i32 (...) @rand()
  %13 = and i32 %12, 255
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @populate_map(i32 %14, i32 %15)
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %1, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 57005, i32* %20, align 4
  %21 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %1, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 48879, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %1, i32 0, i32 0
  store i32 %25, i32* %26, align 8
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %87, %0
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @NR_TESTS, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %90

31:                                               ; preds = %27
  %32 = load i8**, i8*** @test_names, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8*, i8** %32, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %8, align 4
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %1, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 7
  store i32 %38, i32* %42, align 4
  %43 = bitcast %struct.sockaddr_in6* %1 to %struct.sockaddr*
  %44 = call i32 @connect(i32 -1, %struct.sockaddr* %43, i32 24)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %51

47:                                               ; preds = %31
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EBADF, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %47, %31
  %52 = phi i1 [ false, %31 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load i32, i32* @REG_RESULT_H, align 4
  %56 = call i32 @bpf_map_lookup_elem(i32 %55, i32* %2, i32* %4)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32, i32* @INLINE_RESULT_H, align 4
  %63 = call i32 @bpf_map_lookup_elem(i32 %62, i32* %2, i32* %5)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %51
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72, %51
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %78)
  %80 = call i32 @exit(i32 1) #4
  unreachable

81:                                               ; preds = %72
  %82 = load i32, i32* @REG_RESULT_H, align 4
  %83 = call i32 @bpf_map_delete_elem(i32 %82, i32* %2)
  %84 = load i32, i32* @INLINE_RESULT_H, align 4
  %85 = call i32 @bpf_map_delete_elem(i32 %84, i32* %2)
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %27

90:                                               ; preds = %27
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rand(...) #2

declare dso_local i32 @populate_map(i32, i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @bpf_map_lookup_elem(i32, i32*, i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @bpf_map_delete_elem(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
