; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_pfkey_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.sadb_msg = type { i32, i32, i32 }
%struct.xfrm_address_filter = type { i32, i32, i32, i32, i32 }
%struct.pfkey_sock = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32, i32*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sadb_x_filter = type { i32, i32, i32, i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SADB_X_EXT_FILTER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@pfkey_dump_sa = common dso_local global i32* null, align 8
@pfkey_dump_sa_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, %struct.sadb_msg*, i8**)* @pfkey_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfkey_dump(%struct.sock* %0, %struct.sk_buff* %1, %struct.sadb_msg* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sadb_msg*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.xfrm_address_filter*, align 8
  %12 = alloca %struct.pfkey_sock*, align 8
  %13 = alloca %struct.sadb_x_filter*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.sadb_msg* %2, %struct.sadb_msg** %8, align 8
  store i8** %3, i8*** %9, align 8
  store %struct.xfrm_address_filter* null, %struct.xfrm_address_filter** %11, align 8
  %14 = load %struct.sock*, %struct.sock** %6, align 8
  %15 = call %struct.pfkey_sock* @pfkey_sk(%struct.sock* %14)
  store %struct.pfkey_sock* %15, %struct.pfkey_sock** %12, align 8
  %16 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %17 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %20 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %26 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %25, i32 0, i32 0
  %27 = call i32 @mutex_unlock(i32* %26)
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %128

30:                                               ; preds = %4
  %31 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %32 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @pfkey_satype2proto(i32 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %39 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %128

43:                                               ; preds = %30
  %44 = load i8**, i8*** %9, align 8
  %45 = load i32, i32* @SADB_X_EXT_FILTER, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8*, i8** %44, i64 %47
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %95

51:                                               ; preds = %43
  %52 = load i8**, i8*** %9, align 8
  %53 = load i32, i32* @SADB_X_EXT_FILTER, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %52, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = bitcast i8* %57 to %struct.sadb_x_filter*
  store %struct.sadb_x_filter* %58, %struct.sadb_x_filter** %13, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.xfrm_address_filter* @kmalloc(i32 20, i32 %59)
  store %struct.xfrm_address_filter* %60, %struct.xfrm_address_filter** %11, align 8
  %61 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %11, align 8
  %62 = icmp eq %struct.xfrm_address_filter* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %51
  %64 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %65 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %64, i32 0, i32 0
  %66 = call i32 @mutex_unlock(i32* %65)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %5, align 4
  br label %128

69:                                               ; preds = %51
  %70 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %11, align 8
  %71 = getelementptr inbounds %struct.xfrm_address_filter, %struct.xfrm_address_filter* %70, i32 0, i32 4
  %72 = load %struct.sadb_x_filter*, %struct.sadb_x_filter** %13, align 8
  %73 = getelementptr inbounds %struct.sadb_x_filter, %struct.sadb_x_filter* %72, i32 0, i32 4
  %74 = call i32 @memcpy(i32* %71, i32* %73, i32 4)
  %75 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %11, align 8
  %76 = getelementptr inbounds %struct.xfrm_address_filter, %struct.xfrm_address_filter* %75, i32 0, i32 3
  %77 = load %struct.sadb_x_filter*, %struct.sadb_x_filter** %13, align 8
  %78 = getelementptr inbounds %struct.sadb_x_filter, %struct.sadb_x_filter* %77, i32 0, i32 3
  %79 = call i32 @memcpy(i32* %76, i32* %78, i32 4)
  %80 = load %struct.sadb_x_filter*, %struct.sadb_x_filter** %13, align 8
  %81 = getelementptr inbounds %struct.sadb_x_filter, %struct.sadb_x_filter* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %11, align 8
  %84 = getelementptr inbounds %struct.xfrm_address_filter, %struct.xfrm_address_filter* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.sadb_x_filter*, %struct.sadb_x_filter** %13, align 8
  %86 = getelementptr inbounds %struct.sadb_x_filter, %struct.sadb_x_filter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %11, align 8
  %89 = getelementptr inbounds %struct.xfrm_address_filter, %struct.xfrm_address_filter* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.sadb_x_filter*, %struct.sadb_x_filter** %13, align 8
  %91 = getelementptr inbounds %struct.sadb_x_filter, %struct.sadb_x_filter* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %11, align 8
  %94 = getelementptr inbounds %struct.xfrm_address_filter, %struct.xfrm_address_filter* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 4
  br label %95

95:                                               ; preds = %69, %43
  %96 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %97 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %100 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 4
  store i32 %98, i32* %101, align 4
  %102 = load %struct.sadb_msg*, %struct.sadb_msg** %8, align 8
  %103 = getelementptr inbounds %struct.sadb_msg, %struct.sadb_msg* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %106 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  store i32 %104, i32* %107, align 8
  %108 = load i32*, i32** @pfkey_dump_sa, align 8
  %109 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %110 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  store i32* %108, i32** %111, align 8
  %112 = load i32, i32* @pfkey_dump_sa_done, align 4
  %113 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %114 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  store i32 %112, i32* %115, align 4
  %116 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %117 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i64, i64* %10, align 8
  %121 = load %struct.xfrm_address_filter*, %struct.xfrm_address_filter** %11, align 8
  %122 = call i32 @xfrm_state_walk_init(i32* %119, i64 %120, %struct.xfrm_address_filter* %121)
  %123 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %124 = getelementptr inbounds %struct.pfkey_sock, %struct.pfkey_sock* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load %struct.pfkey_sock*, %struct.pfkey_sock** %12, align 8
  %127 = call i32 @pfkey_do_dump(%struct.pfkey_sock* %126)
  store i32 %127, i32* %5, align 4
  br label %128

128:                                              ; preds = %95, %63, %37, %24
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local %struct.pfkey_sock* @pfkey_sk(%struct.sock*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @pfkey_satype2proto(i32) #1

declare dso_local %struct.xfrm_address_filter* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @xfrm_state_walk_init(i32*, i64, %struct.xfrm_address_filter*) #1

declare dso_local i32 @pfkey_do_dump(%struct.pfkey_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
