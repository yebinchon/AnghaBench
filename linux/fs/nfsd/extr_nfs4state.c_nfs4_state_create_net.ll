; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_state_create_net.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4state.c_nfs4_state_create_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.nfsd_net = type { i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i32, i8*, i8*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@nfsd_net_id = common dso_local global i32 0, align 4
@CLIENT_HASH_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SESSION_HASH_SIZE = common dso_local global i32 0, align 4
@RB_ROOT = common dso_local global i8* null, align 8
@laundromat_main = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*)* @nfs4_state_create_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_state_create_net(%struct.net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.nfsd_net*, align 8
  %5 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %3, align 8
  %6 = load %struct.net*, %struct.net** %3, align 8
  %7 = load i32, i32* @nfsd_net_id, align 4
  %8 = call %struct.nfsd_net* @net_generic(%struct.net* %6, i32 %7)
  store %struct.nfsd_net* %8, %struct.nfsd_net** %4, align 8
  %9 = load i32, i32* @CLIENT_HASH_SIZE, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @kmalloc_array(i32 %9, i32 4, i32 %10)
  %12 = bitcast i8* %11 to i32*
  %13 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %14 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %13, i32 0, i32 1
  store i32* %12, i32** %14, align 8
  %15 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %16 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %142

20:                                               ; preds = %1
  %21 = load i32, i32* @CLIENT_HASH_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc_array(i32 %21, i32 4, i32 %22)
  %24 = bitcast i8* %23 to i32*
  %25 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %26 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %28 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %20
  br label %137

32:                                               ; preds = %20
  %33 = load i32, i32* @SESSION_HASH_SIZE, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmalloc_array(i32 %33, i32 4, i32 %34)
  %36 = bitcast i8* %35 to i32*
  %37 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %38 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %37, i32 0, i32 16
  store i32* %36, i32** %38, align 8
  %39 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %40 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %39, i32 0, i32 16
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %132

44:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %64, %44
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @CLIENT_HASH_SIZE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %51 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %58 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = call i32 @INIT_LIST_HEAD(i32* %62)
  br label %64

64:                                               ; preds = %49
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %45

67:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %80, %67
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @SESSION_HASH_SIZE, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %74 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %73, i32 0, i32 16
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = call i32 @INIT_LIST_HEAD(i32* %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %68

83:                                               ; preds = %68
  %84 = load i8*, i8** @RB_ROOT, align 8
  %85 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %86 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %85, i32 0, i32 15
  store i8* %84, i8** %86, align 8
  %87 = load i8*, i8** @RB_ROOT, align 8
  %88 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %89 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %88, i32 0, i32 14
  store i8* %87, i8** %89, align 8
  %90 = call i32 (...) @get_seconds()
  %91 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %92 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %91, i32 0, i32 13
  store i32 %90, i32* %92, align 4
  %93 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %94 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %96 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %95, i32 0, i32 12
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  %98 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %99 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %98, i32 0, i32 12
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = call i32 @INIT_LIST_HEAD(i32* %100)
  %102 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %103 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %102, i32 0, i32 11
  %104 = call i32 @INIT_LIST_HEAD(i32* %103)
  %105 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %106 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %105, i32 0, i32 10
  %107 = call i32 @INIT_LIST_HEAD(i32* %106)
  %108 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %109 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %108, i32 0, i32 9
  %110 = call i32 @INIT_LIST_HEAD(i32* %109)
  %111 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %112 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %111, i32 0, i32 8
  %113 = call i32 @spin_lock_init(i32* %112)
  %114 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %115 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %114, i32 0, i32 7
  %116 = call i32 @spin_lock_init(i32* %115)
  %117 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %118 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %117, i32 0, i32 6
  %119 = call i32 @idr_init(i32* %118)
  %120 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %121 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %120, i32 0, i32 5
  %122 = call i32 @spin_lock_init(i32* %121)
  %123 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %124 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %123, i32 0, i32 4
  %125 = call i32 @INIT_LIST_HEAD(i32* %124)
  %126 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %127 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %126, i32 0, i32 3
  %128 = load i32, i32* @laundromat_main, align 4
  %129 = call i32 @INIT_DELAYED_WORK(i32* %127, i32 %128)
  %130 = load %struct.net*, %struct.net** %3, align 8
  %131 = call i32 @get_net(%struct.net* %130)
  store i32 0, i32* %2, align 4
  br label %145

132:                                              ; preds = %43
  %133 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %134 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @kfree(i32* %135)
  br label %137

137:                                              ; preds = %132, %31
  %138 = load %struct.nfsd_net*, %struct.nfsd_net** %4, align 8
  %139 = getelementptr inbounds %struct.nfsd_net, %struct.nfsd_net* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @kfree(i32* %140)
  br label %142

142:                                              ; preds = %137, %19
  %143 = load i32, i32* @ENOMEM, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %142, %83
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.nfsd_net* @net_generic(%struct.net*, i32) #1

declare dso_local i8* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @get_seconds(...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @get_net(%struct.net*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
