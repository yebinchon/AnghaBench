; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_change_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_dev_change_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i8*, i8, i32, i32 }
%struct.net = type { i32 }

@IFNAMSIZ = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@IFF_LIVE_RENAME_OK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@devnet_rename_seq = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"renamed from %s\0A\00", align 1
@NET_NAME_RENAMED = common dso_local global i8* null, align 8
@dev_base_lock = common dso_local global i32 0, align 4
@NETDEV_CHANGENAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: name change rollback failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_change_name(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i32, i32* @IFNAMSIZ, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %17 = call i32 (...) @ASSERT_RTNL()
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.net* @dev_net(%struct.net_device* %18)
  %20 = icmp ne %struct.net* %19, null
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call %struct.net* @dev_net(%struct.net_device* %24)
  store %struct.net* %25, %struct.net** %11, align 8
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @IFF_UP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %2
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IFF_LIVE_RENAME_OK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @likely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %32
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %166

46:                                               ; preds = %32, %2
  %47 = call i32 @write_seqcount_begin(i32* @devnet_rename_seq)
  %48 = load i8*, i8** %5, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* @IFNAMSIZ, align 4
  %53 = call i64 @strncmp(i8* %48, i8* %51, i32 %52)
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = call i32 @write_seqcount_end(i32* @devnet_rename_seq)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %166

57:                                               ; preds = %46
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @IFNAMSIZ, align 4
  %62 = call i32 @memcpy(i8* %16, i8* %60, i32 %61)
  %63 = load %struct.net*, %struct.net** %11, align 8
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @dev_get_valid_name(%struct.net* %63, %struct.net_device* %64, i8* %65)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = call i32 @write_seqcount_end(i32* @devnet_rename_seq)
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %166

72:                                               ; preds = %57
  %73 = getelementptr inbounds i8, i8* %16, i64 0
  %74 = load i8, i8* %73, align 16
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = call i32 @strchr(i8* %16, i8 signext 37)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = call i32 @netdev_info(%struct.net_device* %81, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %83

83:                                               ; preds = %80, %77, %72
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 3
  %86 = load i8, i8* %85, align 8
  store i8 %86, i8* %6, align 1
  %87 = load i8*, i8** @NET_NAME_RENAMED, align 8
  %88 = ptrtoint i8* %87 to i8
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 3
  store i8 %88, i8* %90, align 8
  br label %91

91:                                               ; preds = %141, %83
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 5
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @device_rename(i32* %93, i8* %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %91
  %101 = load %struct.net_device*, %struct.net_device** %4, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @IFNAMSIZ, align 4
  %105 = call i32 @memcpy(i8* %103, i8* %16, i32 %104)
  %106 = load i8, i8* %6, align 1
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 3
  store i8 %106, i8* %108, align 8
  %109 = call i32 @write_seqcount_end(i32* @devnet_rename_seq)
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %166

111:                                              ; preds = %91
  %112 = call i32 @write_seqcount_end(i32* @devnet_rename_seq)
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = call i32 @netdev_adjacent_rename_links(%struct.net_device* %113, i8* %16)
  %115 = call i32 @write_lock_bh(i32* @dev_base_lock)
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 4
  %118 = call i32 @hlist_del_rcu(i32* %117)
  %119 = call i32 @write_unlock_bh(i32* @dev_base_lock)
  %120 = call i32 (...) @synchronize_rcu()
  %121 = call i32 @write_lock_bh(i32* @dev_base_lock)
  %122 = load %struct.net_device*, %struct.net_device** %4, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 4
  %124 = load %struct.net*, %struct.net** %11, align 8
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @dev_name_hash(%struct.net* %124, i8* %127)
  %129 = call i32 @hlist_add_head_rcu(i32* %123, i32 %128)
  %130 = call i32 @write_unlock_bh(i32* @dev_base_lock)
  %131 = load i32, i32* @NETDEV_CHANGENAME, align 4
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = call i32 @call_netdevice_notifiers(i32 %131, %struct.net_device* %132)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @notifier_to_errno(i32 %134)
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %164

138:                                              ; preds = %111
  %139 = load i32, i32* %9, align 4
  %140 = icmp sge i32 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %138
  %142 = load i32, i32* %10, align 4
  store i32 %142, i32* %9, align 4
  %143 = call i32 @write_seqcount_begin(i32* @devnet_rename_seq)
  %144 = load %struct.net_device*, %struct.net_device** %4, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 2
  %146 = load i8*, i8** %145, align 8
  %147 = load i32, i32* @IFNAMSIZ, align 4
  %148 = call i32 @memcpy(i8* %146, i8* %16, i32 %147)
  %149 = load i8*, i8** %5, align 8
  %150 = load i32, i32* @IFNAMSIZ, align 4
  %151 = call i32 @memcpy(i8* %16, i8* %149, i32 %150)
  %152 = load i8, i8* %6, align 1
  %153 = load %struct.net_device*, %struct.net_device** %4, align 8
  %154 = getelementptr inbounds %struct.net_device, %struct.net_device* %153, i32 0, i32 3
  store i8 %152, i8* %154, align 8
  %155 = load i8*, i8** @NET_NAME_RENAMED, align 8
  %156 = ptrtoint i8* %155 to i8
  store i8 %156, i8* %6, align 1
  br label %91

157:                                              ; preds = %138
  %158 = load %struct.net_device*, %struct.net_device** %4, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 2
  %160 = load i8*, i8** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %160, i32 %161)
  br label %163

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163, %111
  %165 = load i32, i32* %9, align 4
  store i32 %165, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %166

166:                                              ; preds = %164, %100, %69, %55, %43
  %167 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %167)
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT_RTNL(...) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local %struct.net* @dev_net(%struct.net_device*) #2

declare dso_local i64 @likely(i32) #2

declare dso_local i32 @write_seqcount_begin(i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @write_seqcount_end(i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @dev_get_valid_name(%struct.net*, %struct.net_device*, i8*) #2

declare dso_local i32 @strchr(i8*, i8 signext) #2

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*) #2

declare dso_local i32 @device_rename(i32*, i8*) #2

declare dso_local i32 @netdev_adjacent_rename_links(%struct.net_device*, i8*) #2

declare dso_local i32 @write_lock_bh(i32*) #2

declare dso_local i32 @hlist_del_rcu(i32*) #2

declare dso_local i32 @write_unlock_bh(i32*) #2

declare dso_local i32 @synchronize_rcu(...) #2

declare dso_local i32 @hlist_add_head_rcu(i32*, i32) #2

declare dso_local i32 @dev_name_hash(%struct.net*, i8*) #2

declare dso_local i32 @call_netdevice_notifiers(i32, %struct.net_device*) #2

declare dso_local i32 @notifier_to_errno(i32) #2

declare dso_local i32 @pr_err(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
