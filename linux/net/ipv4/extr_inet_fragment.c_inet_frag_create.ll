; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_fragment.c_inet_frag_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inet_frag_queue = type { i32, i32, i32, i32 }
%struct.fqdir = type { i32, i64, %struct.inet_frags* }
%struct.inet_frags = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@INET_FRAG_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inet_frag_queue* (%struct.fqdir*, i8*, %struct.inet_frag_queue**)* @inet_frag_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inet_frag_queue* @inet_frag_create(%struct.fqdir* %0, i8* %1, %struct.inet_frag_queue** %2) #0 {
  %4 = alloca %struct.inet_frag_queue*, align 8
  %5 = alloca %struct.fqdir*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.inet_frag_queue**, align 8
  %8 = alloca %struct.inet_frags*, align 8
  %9 = alloca %struct.inet_frag_queue*, align 8
  store %struct.fqdir* %0, %struct.fqdir** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.inet_frag_queue** %2, %struct.inet_frag_queue*** %7, align 8
  %10 = load %struct.fqdir*, %struct.fqdir** %5, align 8
  %11 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %10, i32 0, i32 2
  %12 = load %struct.inet_frags*, %struct.inet_frags** %11, align 8
  store %struct.inet_frags* %12, %struct.inet_frags** %8, align 8
  %13 = load %struct.fqdir*, %struct.fqdir** %5, align 8
  %14 = load %struct.inet_frags*, %struct.inet_frags** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call %struct.inet_frag_queue* @inet_frag_alloc(%struct.fqdir* %13, %struct.inet_frags* %14, i8* %15)
  store %struct.inet_frag_queue* %16, %struct.inet_frag_queue** %9, align 8
  %17 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %9, align 8
  %18 = icmp ne %struct.inet_frag_queue* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  %22 = call %struct.inet_frag_queue* @ERR_PTR(i32 %21)
  %23 = load %struct.inet_frag_queue**, %struct.inet_frag_queue*** %7, align 8
  store %struct.inet_frag_queue* %22, %struct.inet_frag_queue** %23, align 8
  store %struct.inet_frag_queue* null, %struct.inet_frag_queue** %4, align 8
  br label %59

24:                                               ; preds = %3
  %25 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %9, align 8
  %26 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %25, i32 0, i32 3
  %27 = load i64, i64* @jiffies, align 8
  %28 = load %struct.fqdir*, %struct.fqdir** %5, align 8
  %29 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = call i32 @mod_timer(i32* %26, i64 %31)
  %33 = load %struct.fqdir*, %struct.fqdir** %5, align 8
  %34 = getelementptr inbounds %struct.fqdir, %struct.fqdir* %33, i32 0, i32 0
  %35 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %9, align 8
  %36 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %35, i32 0, i32 2
  %37 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %9, align 8
  %38 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %37, i32 0, i32 1
  %39 = load %struct.inet_frags*, %struct.inet_frags** %8, align 8
  %40 = getelementptr inbounds %struct.inet_frags, %struct.inet_frags* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.inet_frag_queue* @rhashtable_lookup_get_insert_key(i32* %34, i32* %36, i32* %38, i32 %41)
  %43 = load %struct.inet_frag_queue**, %struct.inet_frag_queue*** %7, align 8
  store %struct.inet_frag_queue* %42, %struct.inet_frag_queue** %43, align 8
  %44 = load %struct.inet_frag_queue**, %struct.inet_frag_queue*** %7, align 8
  %45 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %44, align 8
  %46 = icmp ne %struct.inet_frag_queue* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %24
  %48 = load i32, i32* @INET_FRAG_COMPLETE, align 4
  %49 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %9, align 8
  %50 = getelementptr inbounds %struct.inet_frag_queue, %struct.inet_frag_queue* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %9, align 8
  %54 = call i32 @inet_frag_kill(%struct.inet_frag_queue* %53)
  %55 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %9, align 8
  %56 = call i32 @inet_frag_destroy(%struct.inet_frag_queue* %55)
  store %struct.inet_frag_queue* null, %struct.inet_frag_queue** %4, align 8
  br label %59

57:                                               ; preds = %24
  %58 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %9, align 8
  store %struct.inet_frag_queue* %58, %struct.inet_frag_queue** %4, align 8
  br label %59

59:                                               ; preds = %57, %47, %19
  %60 = load %struct.inet_frag_queue*, %struct.inet_frag_queue** %4, align 8
  ret %struct.inet_frag_queue* %60
}

declare dso_local %struct.inet_frag_queue* @inet_frag_alloc(%struct.fqdir*, %struct.inet_frags*, i8*) #1

declare dso_local %struct.inet_frag_queue* @ERR_PTR(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local %struct.inet_frag_queue* @rhashtable_lookup_get_insert_key(i32*, i32*, i32*, i32) #1

declare dso_local i32 @inet_frag_kill(%struct.inet_frag_queue*) #1

declare dso_local i32 @inet_frag_destroy(%struct.inet_frag_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
