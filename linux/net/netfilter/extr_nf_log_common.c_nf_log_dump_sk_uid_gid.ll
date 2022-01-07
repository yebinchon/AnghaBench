; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log_common.c_nf_log_dump_sk_uid_gid.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_log_common.c_nf_log_dump_sk_uid_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nf_log_buf = type { i32 }
%struct.sock = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.cred* }
%struct.cred = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"UID=%u GID=%u \00", align 1
@init_user_ns = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nf_log_dump_sk_uid_gid(%struct.net* %0, %struct.nf_log_buf* %1, %struct.sock* %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nf_log_buf*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.cred*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nf_log_buf* %1, %struct.nf_log_buf** %5, align 8
  store %struct.sock* %2, %struct.sock** %6, align 8
  %8 = load %struct.sock*, %struct.sock** %6, align 8
  %9 = icmp ne %struct.sock* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %3
  %11 = load %struct.sock*, %struct.sock** %6, align 8
  %12 = call i32 @sk_fullsock(%struct.sock* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load %struct.net*, %struct.net** %4, align 8
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = call i32 @sock_net(%struct.sock* %16)
  %18 = call i32 @net_eq(%struct.net* %15, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14, %10, %3
  br label %58

21:                                               ; preds = %14
  %22 = load %struct.sock*, %struct.sock** %6, align 8
  %23 = getelementptr inbounds %struct.sock, %struct.sock* %22, i32 0, i32 0
  %24 = call i32 @read_lock_bh(i32* %23)
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = getelementptr inbounds %struct.sock, %struct.sock* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp ne %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %54

29:                                               ; preds = %21
  %30 = load %struct.sock*, %struct.sock** %6, align 8
  %31 = getelementptr inbounds %struct.sock, %struct.sock* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = icmp ne %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %54

36:                                               ; preds = %29
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load %struct.cred*, %struct.cred** %42, align 8
  store %struct.cred* %43, %struct.cred** %7, align 8
  %44 = load %struct.nf_log_buf*, %struct.nf_log_buf** %5, align 8
  %45 = load %struct.cred*, %struct.cred** %7, align 8
  %46 = getelementptr inbounds %struct.cred, %struct.cred* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @from_kuid_munged(i32* @init_user_ns, i32 %47)
  %49 = load %struct.cred*, %struct.cred** %7, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @from_kgid_munged(i32* @init_user_ns, i32 %51)
  %53 = call i32 @nf_log_buf_add(%struct.nf_log_buf* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %36, %29, %21
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = call i32 @read_unlock_bh(i32* %56)
  br label %58

58:                                               ; preds = %54, %20
  ret void
}

declare dso_local i32 @sk_fullsock(%struct.sock*) #1

declare dso_local i32 @net_eq(%struct.net*, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @nf_log_buf_add(%struct.nf_log_buf*, i8*, i32, i32) #1

declare dso_local i32 @from_kuid_munged(i32*, i32) #1

declare dso_local i32 @from_kgid_munged(i32*, i32) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
