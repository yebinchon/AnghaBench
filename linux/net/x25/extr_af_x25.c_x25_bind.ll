; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_bind.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_af_x25.c_x25_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_x25 = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }

@AF_X25 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@null_x25_address = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"x25_bind: socket is bound\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32)* @x25_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_bind(%struct.socket* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sockaddr_x25*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.socket*, %struct.socket** %4, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  store %struct.sock* %14, %struct.sock** %7, align 8
  %15 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %16 = bitcast %struct.sockaddr* %15 to %struct.sockaddr_x25*
  store %struct.sockaddr_x25* %16, %struct.sockaddr_x25** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 16
  br i1 %19, label %26, label %20

20:                                               ; preds = %3
  %21 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %8, align 8
  %22 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AF_X25, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %11, align 4
  br label %94

29:                                               ; preds = %20
  %30 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %8, align 8
  %31 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @null_x25_address, i32 0, i32 0), align 4
  %35 = call i64 @strcmp(i32* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %29
  %38 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %8, align 8
  %39 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @strlen(i32* %41)
  store i32 %42, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %62, %37
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %43
  %48 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %8, align 8
  %49 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @isdigit(i32 %55) #4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %47
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %11, align 4
  br label %94

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %43

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %65, %29
  %67 = load %struct.sock*, %struct.sock** %7, align 8
  %68 = call i32 @lock_sock(%struct.sock* %67)
  %69 = load %struct.sock*, %struct.sock** %7, align 8
  %70 = load i32, i32* @SOCK_ZAPPED, align 4
  %71 = call i64 @sock_flag(%struct.sock* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %66
  %74 = load %struct.sock*, %struct.sock** %7, align 8
  %75 = call %struct.TYPE_5__* @x25_sk(%struct.sock* %74)
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load %struct.sockaddr_x25*, %struct.sockaddr_x25** %8, align 8
  %78 = getelementptr inbounds %struct.sockaddr_x25, %struct.sockaddr_x25* %77, i32 0, i32 1
  %79 = bitcast %struct.TYPE_4__* %76 to i8*
  %80 = bitcast %struct.TYPE_4__* %78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %79, i8* align 8 %80, i64 8, i1 false)
  %81 = load %struct.sock*, %struct.sock** %7, align 8
  %82 = call i32 @x25_insert_socket(%struct.sock* %81)
  %83 = load %struct.sock*, %struct.sock** %7, align 8
  %84 = load i32, i32* @SOCK_ZAPPED, align 4
  %85 = call i32 @sock_reset_flag(%struct.sock* %83, i32 %84)
  br label %89

86:                                               ; preds = %66
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %86, %73
  %90 = load %struct.sock*, %struct.sock** %7, align 8
  %91 = call i32 @release_sock(%struct.sock* %90)
  %92 = load %struct.sock*, %struct.sock** %7, align 8
  %93 = call i32 @SOCK_DEBUG(%struct.sock* %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %94

94:                                               ; preds = %89, %58, %26
  %95 = load i32, i32* %11, align 4
  ret i32 %95
}

declare dso_local i64 @strcmp(i32*, i32) #1

declare dso_local i32 @strlen(i32*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.TYPE_5__* @x25_sk(%struct.sock*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @x25_insert_socket(%struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @SOCK_DEBUG(%struct.sock*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
