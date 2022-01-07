; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_dentry_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_dentry_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_inode = type { i32, i32, i32 }
%struct.fuse_entry_out = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fuse_forget_link = type { i32 }

@LOOKUP_REVAL = common dso_local global i32 0, align 4
@args = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@LOOKUP_RCU = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@FUSE_I_INIT_RDPLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @fuse_dentry_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_dentry_revalidate(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.fuse_conn*, align 8
  %9 = alloca %struct.fuse_inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.fuse_entry_out, align 8
  %12 = alloca %struct.fuse_forget_link*, align 8
  %13 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.dentry*, %struct.dentry** %4, align 8
  %15 = call %struct.inode* @d_inode_rcu(%struct.dentry* %14)
  store %struct.inode* %15, %struct.inode** %6, align 8
  %16 = load %struct.inode*, %struct.inode** %6, align 8
  %17 = icmp ne %struct.inode* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = call i64 @is_bad_inode(%struct.inode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %184

23:                                               ; preds = %18, %2
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = call i32 @fuse_dentry_time(%struct.dentry* %24)
  %26 = call i32 (...) @get_jiffies_64()
  %27 = call i64 @time_before64(i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @LOOKUP_REVAL, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %143

34:                                               ; preds = %29, %23
  %35 = load i32, i32* @args, align 4
  %36 = call i32 @FUSE_ARGS(i32 %35)
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %184

40:                                               ; preds = %34
  %41 = load i32, i32* @ECHILD, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @LOOKUP_RCU, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %182

48:                                               ; preds = %40
  %49 = load %struct.inode*, %struct.inode** %6, align 8
  %50 = call %struct.fuse_conn* @get_fuse_conn(%struct.inode* %49)
  store %struct.fuse_conn* %50, %struct.fuse_conn** %8, align 8
  %51 = call %struct.fuse_forget_link* (...) @fuse_alloc_forget()
  store %struct.fuse_forget_link* %51, %struct.fuse_forget_link** %12, align 8
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %10, align 4
  %54 = load %struct.fuse_forget_link*, %struct.fuse_forget_link** %12, align 8
  %55 = icmp ne %struct.fuse_forget_link* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %182

57:                                               ; preds = %48
  %58 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %59 = call i32 @fuse_get_attr_version(%struct.fuse_conn* %58)
  store i32 %59, i32* %13, align 4
  %60 = load %struct.dentry*, %struct.dentry** %4, align 8
  %61 = call %struct.dentry* @dget_parent(%struct.dentry* %60)
  store %struct.dentry* %61, %struct.dentry** %7, align 8
  %62 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %63 = load %struct.dentry*, %struct.dentry** %7, align 8
  %64 = call %struct.inode* @d_inode(%struct.dentry* %63)
  %65 = call i64 @get_node_id(%struct.inode* %64)
  %66 = load %struct.dentry*, %struct.dentry** %4, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 0
  %68 = call i32 @fuse_lookup_init(%struct.fuse_conn* %62, i32* @args, i64 %65, i32* %67, %struct.fuse_entry_out* %11)
  %69 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %70 = call i32 @fuse_simple_request(%struct.fuse_conn* %69, i32* @args)
  store i32 %70, i32* %10, align 4
  %71 = load %struct.dentry*, %struct.dentry** %7, align 8
  %72 = call i32 @dput(%struct.dentry* %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %57
  %76 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %11, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* @ENOENT, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %79, %75, %57
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %110, label %85

85:                                               ; preds = %82
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %86)
  store %struct.fuse_inode* %87, %struct.fuse_inode** %9, align 8
  %88 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %11, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = call i64 @get_node_id(%struct.inode* %90)
  %92 = icmp ne i64 %89, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load %struct.fuse_conn*, %struct.fuse_conn** %8, align 8
  %95 = load %struct.fuse_forget_link*, %struct.fuse_forget_link** %12, align 8
  %96 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %11, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @fuse_queue_forget(%struct.fuse_conn* %94, %struct.fuse_forget_link* %95, i64 %97, i32 1)
  br label %184

99:                                               ; preds = %85
  %100 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %101 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %100, i32 0, i32 1
  %102 = call i32 @spin_lock(i32* %101)
  %103 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %104 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  %107 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %108 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %107, i32 0, i32 1
  %109 = call i32 @spin_unlock(i32* %108)
  br label %110

110:                                              ; preds = %99, %82
  %111 = load %struct.fuse_forget_link*, %struct.fuse_forget_link** %12, align 8
  %112 = call i32 @kfree(%struct.fuse_forget_link* %111)
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  br label %182

118:                                              ; preds = %110
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %118
  %122 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %11, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.inode*, %struct.inode** %6, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %124, %127
  %129 = load i32, i32* @S_IFMT, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %121, %118
  br label %184

133:                                              ; preds = %121
  %134 = load %struct.inode*, %struct.inode** %6, align 8
  %135 = call i32 @forget_all_cached_acls(%struct.inode* %134)
  %136 = load %struct.inode*, %struct.inode** %6, align 8
  %137 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %11, i32 0, i32 1
  %138 = call i32 @entry_attr_timeout(%struct.fuse_entry_out* %11)
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @fuse_change_attributes(%struct.inode* %136, %struct.TYPE_2__* %137, i32 %138, i32 %139)
  %141 = load %struct.dentry*, %struct.dentry** %4, align 8
  %142 = call i32 @fuse_change_entry_timeout(%struct.dentry* %141, %struct.fuse_entry_out* %11)
  br label %180

143:                                              ; preds = %29
  %144 = load %struct.inode*, %struct.inode** %6, align 8
  %145 = icmp ne %struct.inode* %144, null
  br i1 %145, label %146, label %179

146:                                              ; preds = %143
  %147 = load %struct.inode*, %struct.inode** %6, align 8
  %148 = call %struct.fuse_inode* @get_fuse_inode(%struct.inode* %147)
  store %struct.fuse_inode* %148, %struct.fuse_inode** %9, align 8
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @LOOKUP_RCU, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %146
  %154 = load i32, i32* @FUSE_I_INIT_RDPLUS, align 4
  %155 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %156 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %155, i32 0, i32 0
  %157 = call i64 @test_bit(i32 %154, i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %153
  %160 = load i32, i32* @ECHILD, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %3, align 4
  br label %185

162:                                              ; preds = %153
  br label %178

163:                                              ; preds = %146
  %164 = load i32, i32* @FUSE_I_INIT_RDPLUS, align 4
  %165 = load %struct.fuse_inode*, %struct.fuse_inode** %9, align 8
  %166 = getelementptr inbounds %struct.fuse_inode, %struct.fuse_inode* %165, i32 0, i32 0
  %167 = call i64 @test_and_clear_bit(i32 %164, i32* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %177

169:                                              ; preds = %163
  %170 = load %struct.dentry*, %struct.dentry** %4, align 8
  %171 = call %struct.dentry* @dget_parent(%struct.dentry* %170)
  store %struct.dentry* %171, %struct.dentry** %7, align 8
  %172 = load %struct.dentry*, %struct.dentry** %7, align 8
  %173 = call %struct.inode* @d_inode(%struct.dentry* %172)
  %174 = call i32 @fuse_advise_use_readdirplus(%struct.inode* %173)
  %175 = load %struct.dentry*, %struct.dentry** %7, align 8
  %176 = call i32 @dput(%struct.dentry* %175)
  br label %177

177:                                              ; preds = %169, %163
  br label %178

178:                                              ; preds = %177, %162
  br label %179

179:                                              ; preds = %178, %143
  br label %180

180:                                              ; preds = %179, %133
  br label %181

181:                                              ; preds = %180
  store i32 1, i32* %10, align 4
  br label %182

182:                                              ; preds = %184, %181, %117, %56, %47
  %183 = load i32, i32* %10, align 4
  store i32 %183, i32* %3, align 4
  br label %185

184:                                              ; preds = %132, %93, %39, %22
  store i32 0, i32* %10, align 4
  br label %182

185:                                              ; preds = %182, %159
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local %struct.inode* @d_inode_rcu(%struct.dentry*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i64 @time_before64(i32, i32) #1

declare dso_local i32 @fuse_dentry_time(%struct.dentry*) #1

declare dso_local i32 @get_jiffies_64(...) #1

declare dso_local i32 @FUSE_ARGS(i32) #1

declare dso_local %struct.fuse_conn* @get_fuse_conn(%struct.inode*) #1

declare dso_local %struct.fuse_forget_link* @fuse_alloc_forget(...) #1

declare dso_local i32 @fuse_get_attr_version(%struct.fuse_conn*) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @fuse_lookup_init(%struct.fuse_conn*, i32*, i64, i32*, %struct.fuse_entry_out*) #1

declare dso_local i64 @get_node_id(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local %struct.fuse_inode* @get_fuse_inode(%struct.inode*) #1

declare dso_local i32 @fuse_queue_forget(%struct.fuse_conn*, %struct.fuse_forget_link*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.fuse_forget_link*) #1

declare dso_local i32 @forget_all_cached_acls(%struct.inode*) #1

declare dso_local i32 @fuse_change_attributes(%struct.inode*, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @entry_attr_timeout(%struct.fuse_entry_out*) #1

declare dso_local i32 @fuse_change_entry_timeout(%struct.dentry*, %struct.fuse_entry_out*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @fuse_advise_use_readdirplus(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
