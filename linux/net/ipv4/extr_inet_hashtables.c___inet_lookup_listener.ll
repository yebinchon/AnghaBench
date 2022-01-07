; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c___inet_lookup_listener.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_hashtables.c___inet_lookup_listener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.net = type { i32 }
%struct.inet_hashinfo = type { i32 }
%struct.sk_buff = type { i32 }
%struct.inet_listen_hashbucket = type { i32 }

@INADDR_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @__inet_lookup_listener(%struct.net* %0, %struct.inet_hashinfo* %1, %struct.sk_buff* %2, i32 %3, i32 %4, i32 %5, i32 %6, i16 zeroext %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.sock*, align 8
  %12 = alloca %struct.net*, align 8
  %13 = alloca %struct.inet_hashinfo*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i16, align 2
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.inet_listen_hashbucket*, align 8
  %23 = alloca %struct.sock*, align 8
  %24 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %12, align 8
  store %struct.inet_hashinfo* %1, %struct.inet_hashinfo** %13, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i16 %7, i16* %19, align 2
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  store %struct.sock* null, %struct.sock** %23, align 8
  %25 = load %struct.net*, %struct.net** %12, align 8
  %26 = load i32, i32* %18, align 4
  %27 = load i16, i16* %19, align 2
  %28 = call i32 @ipv4_portaddr_hash(%struct.net* %25, i32 %26, i16 zeroext %27)
  store i32 %28, i32* %24, align 4
  %29 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %13, align 8
  %30 = load i32, i32* %24, align 4
  %31 = call %struct.inet_listen_hashbucket* @inet_lhash2_bucket(%struct.inet_hashinfo* %29, i32 %30)
  store %struct.inet_listen_hashbucket* %31, %struct.inet_listen_hashbucket** %22, align 8
  %32 = load %struct.net*, %struct.net** %12, align 8
  %33 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %22, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* %16, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %18, align 4
  %39 = load i16, i16* %19, align 2
  %40 = load i32, i32* %20, align 4
  %41 = load i32, i32* %21, align 4
  %42 = call %struct.sock* @inet_lhash2_lookup(%struct.net* %32, %struct.inet_listen_hashbucket* %33, %struct.sk_buff* %34, i32 %35, i32 %36, i32 %37, i32 %38, i16 zeroext %39, i32 %40, i32 %41)
  store %struct.sock* %42, %struct.sock** %23, align 8
  %43 = load %struct.sock*, %struct.sock** %23, align 8
  %44 = icmp ne %struct.sock* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %10
  br label %67

46:                                               ; preds = %10
  %47 = load %struct.net*, %struct.net** %12, align 8
  %48 = load i32, i32* @INADDR_ANY, align 4
  %49 = call i32 @htonl(i32 %48)
  %50 = load i16, i16* %19, align 2
  %51 = call i32 @ipv4_portaddr_hash(%struct.net* %47, i32 %49, i16 zeroext %50)
  store i32 %51, i32* %24, align 4
  %52 = load %struct.inet_hashinfo*, %struct.inet_hashinfo** %13, align 8
  %53 = load i32, i32* %24, align 4
  %54 = call %struct.inet_listen_hashbucket* @inet_lhash2_bucket(%struct.inet_hashinfo* %52, i32 %53)
  store %struct.inet_listen_hashbucket* %54, %struct.inet_listen_hashbucket** %22, align 8
  %55 = load %struct.net*, %struct.net** %12, align 8
  %56 = load %struct.inet_listen_hashbucket*, %struct.inet_listen_hashbucket** %22, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* @INADDR_ANY, align 4
  %62 = call i32 @htonl(i32 %61)
  %63 = load i16, i16* %19, align 2
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %21, align 4
  %66 = call %struct.sock* @inet_lhash2_lookup(%struct.net* %55, %struct.inet_listen_hashbucket* %56, %struct.sk_buff* %57, i32 %58, i32 %59, i32 %60, i32 %62, i16 zeroext %63, i32 %64, i32 %65)
  store %struct.sock* %66, %struct.sock** %23, align 8
  br label %67

67:                                               ; preds = %46, %45
  %68 = load %struct.sock*, %struct.sock** %23, align 8
  %69 = call i64 @IS_ERR(%struct.sock* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store %struct.sock* null, %struct.sock** %11, align 8
  br label %74

72:                                               ; preds = %67
  %73 = load %struct.sock*, %struct.sock** %23, align 8
  store %struct.sock* %73, %struct.sock** %11, align 8
  br label %74

74:                                               ; preds = %72, %71
  %75 = load %struct.sock*, %struct.sock** %11, align 8
  ret %struct.sock* %75
}

declare dso_local i32 @ipv4_portaddr_hash(%struct.net*, i32, i16 zeroext) #1

declare dso_local %struct.inet_listen_hashbucket* @inet_lhash2_bucket(%struct.inet_hashinfo*, i32) #1

declare dso_local %struct.sock* @inet_lhash2_lookup(%struct.net*, %struct.inet_listen_hashbucket*, %struct.sk_buff*, i32, i32, i32, i32, i16 zeroext, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @IS_ERR(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
