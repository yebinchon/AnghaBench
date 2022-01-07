; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntlock.c_nlmclnt_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntlock.c_nlmclnt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32, i32* }
%struct.nlmclnt_initdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOLCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nlm_host* @nlmclnt_init(%struct.nlmclnt_initdata* %0) #0 {
  %2 = alloca %struct.nlm_host*, align 8
  %3 = alloca %struct.nlmclnt_initdata*, align 8
  %4 = alloca %struct.nlm_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nlmclnt_initdata* %0, %struct.nlmclnt_initdata** %3, align 8
  %7 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %8 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 2
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %14 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %17 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @lockd_up(i32 %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.nlm_host* @ERR_PTR(i32 %23)
  store %struct.nlm_host* %24, %struct.nlm_host** %2, align 8
  br label %80

25:                                               ; preds = %1
  %26 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %27 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %30 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %33 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %37 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %40 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %43 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %46 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.nlm_host* @nlmclnt_lookup_host(i32 %28, i32 %31, i32 %34, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47)
  store %struct.nlm_host* %48, %struct.nlm_host** %4, align 8
  %49 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %50 = icmp eq %struct.nlm_host* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %25
  br label %72

52:                                               ; preds = %25
  %53 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %54 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %59 = call i32* @nlm_bind_host(%struct.nlm_host* %58)
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %69

62:                                               ; preds = %57, %52
  %63 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %64 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %67 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  store %struct.nlm_host* %68, %struct.nlm_host** %2, align 8
  br label %80

69:                                               ; preds = %61
  %70 = load %struct.nlm_host*, %struct.nlm_host** %4, align 8
  %71 = call i32 @nlmclnt_release_host(%struct.nlm_host* %70)
  br label %72

72:                                               ; preds = %69, %51
  %73 = load %struct.nlmclnt_initdata*, %struct.nlmclnt_initdata** %3, align 8
  %74 = getelementptr inbounds %struct.nlmclnt_initdata, %struct.nlmclnt_initdata* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @lockd_down(i32 %75)
  %77 = load i32, i32* @ENOLCK, align 4
  %78 = sub nsw i32 0, %77
  %79 = call %struct.nlm_host* @ERR_PTR(i32 %78)
  store %struct.nlm_host* %79, %struct.nlm_host** %2, align 8
  br label %80

80:                                               ; preds = %72, %62, %22
  %81 = load %struct.nlm_host*, %struct.nlm_host** %2, align 8
  ret %struct.nlm_host* %81
}

declare dso_local i32 @lockd_up(i32, i32) #1

declare dso_local %struct.nlm_host* @ERR_PTR(i32) #1

declare dso_local %struct.nlm_host* @nlmclnt_lookup_host(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @nlm_bind_host(%struct.nlm_host*) #1

declare dso_local i32 @nlmclnt_release_host(%struct.nlm_host*) #1

declare dso_local i32 @lockd_down(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
