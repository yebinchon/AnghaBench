; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_do_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_do_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfkey_sock = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.pfkey_sock.0*)*, %struct.TYPE_4__* }
%struct.pfkey_sock.0 = type opaque
%struct.TYPE_4__ = type { i64 }
%struct.sadb_msg = type { i32, i64 }

@ENOBUFS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@BROADCAST_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pfkey_sock*)* @pfkey_do_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_do_dump(%struct.pfkey_sock* %0) #0 {
  %2 = alloca %struct.pfkey_sock*, align 8
  %3 = alloca %struct.sadb_msg*, align 8
  %4 = alloca i32, align 4
  store %struct.pfkey_sock* %0, %struct.pfkey_sock** %2, align 8
  %5 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %6 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %9 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (%struct.pfkey_sock.0*)*, i32 (%struct.pfkey_sock.0*)** %10, align 8
  %12 = icmp ne i32 (%struct.pfkey_sock.0*)* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %70

14:                                               ; preds = %1
  %15 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %16 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32 (%struct.pfkey_sock.0*)*, i32 (%struct.pfkey_sock.0*)** %17, align 8
  %19 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %20 = bitcast %struct.pfkey_sock* %19 to %struct.pfkey_sock.0*
  %21 = call i32 %18(%struct.pfkey_sock.0* %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @ENOBUFS, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %70

27:                                               ; preds = %14
  %28 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %29 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %33, label %67

33:                                               ; preds = %27
  %34 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %35 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %34, i32 0, i32 2
  %36 = call i32 @pfkey_can_dump(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %70

39:                                               ; preds = %33
  %40 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %41 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.sadb_msg*
  store %struct.sadb_msg* %46, %struct.sadb_msg** %3, align 8
  %47 = load %struct.sadb_msg*, %struct.sadb_msg** %3, align 8
  %48 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.sadb_msg*, %struct.sadb_msg** %3, align 8
  %51 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %53 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* @GFP_ATOMIC, align 4
  %57 = load i32, i32* @BROADCAST_ONE, align 4
  %58 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %59 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %58, i32 0, i32 2
  %60 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %61 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %60, i32 0, i32 2
  %62 = call i32 @sock_net(i32* %61)
  %63 = call i32 @pfkey_broadcast(%struct.TYPE_4__* %55, i32 %56, i32 %57, i32* %59, i32 %62)
  %64 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %65 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %66, align 8
  br label %67

67:                                               ; preds = %39, %27
  %68 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %69 = call i32 @pfkey_terminate_dump(%struct.pfkey_sock* %68)
  br label %70

70:                                               ; preds = %67, %38, %26, %13
  %71 = load %struct.pfkey_sock*, %struct.pfkey_sock** %2, align 8
  %72 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pfkey_can_dump(i32*) #1

declare dso_local i32 @pfkey_broadcast(%struct.TYPE_4__*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_net(i32*) #1

declare dso_local i32 @pfkey_terminate_dump(%struct.pfkey_sock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
