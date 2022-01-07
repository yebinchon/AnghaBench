; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_cld_tracking_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4recover.c_nfsd4_cld_tracking_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfsd_net = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"NFSD: nfsdcld GetVersion upcall failed. Please upgrade nfsdcld.\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"NFSD: nfsdcld GraceStart upcall failed. Please upgrade nfsdcld.\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"NFSD: Using nfsdcld client tracking operations.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @nfsd4_cld_tracking_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_cld_tracking_init(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd_net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  %8 = load %struct.net*, %struct.net** %3, align 8
  %9 = load i32, i32* @nfsd_net_id, align 4
  %10 = call %struct.nfsd_net* @net_generic(%struct.net* %8, i32 %9)
  store %struct.nfsd_net* %10, %struct.nfsd_net** %5, align 8
  store i32 10, i32* %7, align 4
  %11 = load %struct.net*, %struct.net** %3, align 8
  %12 = call i32 @nfs4_cld_state_init(%struct.net* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %96

17:                                               ; preds = %1
  %18 = load %struct.net*, %struct.net** %3, align 8
  %19 = call i32 @__nfsd4_init_cld_pipe(%struct.net* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %92

23:                                               ; preds = %17
  %24 = call i32 @crypto_alloc_shash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %25 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %24, i32* %28, align 4
  %29 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %30 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %23
  %37 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %38 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @PTR_ERR(i32 %41)
  store i32 %42, i32* %4, align 4
  br label %89

43:                                               ; preds = %23
  br label %44

44:                                               ; preds = %54, %43
  %45 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %46 = call i32 @cld_running(%struct.nfsd_net* %45)
  store i32 %46, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %7, align 4
  %51 = icmp ne i32 %49, 0
  br label %52

52:                                               ; preds = %48, %44
  %53 = phi i1 [ false, %44 ], [ %51, %48 ]
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = call i32 @msleep(i32 100)
  br label %44

56:                                               ; preds = %52
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %89

62:                                               ; preds = %56
  %63 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %64 = call i32 @nfsd4_cld_get_version(%struct.nfsd_net* %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = call i32 @pr_warn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %62
  %72 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %73 = call i32 @nfsd4_cld_grace_start(%struct.nfsd_net* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %71
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @EOPNOTSUPP, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp eq i32 %77, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 @pr_warn(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %76
  %84 = load %struct.nfsd_net*, %struct.nfsd_net** %5, align 8
  %85 = call i32 @nfs4_release_reclaim(%struct.nfsd_net* %84)
  br label %89

86:                                               ; preds = %71
  %87 = call i32 @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86
  store i32 0, i32* %2, align 4
  br label %96

89:                                               ; preds = %83, %59, %36
  %90 = load %struct.net*, %struct.net** %3, align 8
  %91 = call i32 @nfsd4_remove_cld_pipe(%struct.net* %90)
  br label %92

92:                                               ; preds = %89, %22
  %93 = load %struct.net*, %struct.net** %3, align 8
  %94 = call i32 @nfs4_cld_state_shutdown(%struct.net* %93)
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %88, %15
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i32 @nfs4_cld_state_init(%struct.net*) #1

declare dso_local i32 @__nfsd4_init_cld_pipe(%struct.net*) #1

declare dso_local i32 @crypto_alloc_shash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @cld_running(%struct.nfsd_net*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @nfsd4_cld_get_version(%struct.nfsd_net*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @nfsd4_cld_grace_start(%struct.nfsd_net*) #1

declare dso_local i32 @nfs4_release_reclaim(%struct.nfsd_net*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @nfsd4_remove_cld_pipe(%struct.net*) #1

declare dso_local i32 @nfs4_cld_state_shutdown(%struct.net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
