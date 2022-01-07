; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_htable_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_htable_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_operations = type { i32 }
%struct.net = type { i32 }
%struct.hashlimit_cfg3 = type { i32 }
%struct.xt_hashlimit_htable = type { i32, i32, i32, %struct.TYPE_2__, i32, %struct.net*, i32, i32*, i32, i64, i64, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hashlimit_net = type { i32, i32, i32 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@hash = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@dl_seq_ops_v1 = common dso_local global %struct.seq_operations zeroinitializer, align 4
@dl_seq_ops_v2 = common dso_local global %struct.seq_operations zeroinitializer, align 4
@dl_seq_ops = common dso_local global %struct.seq_operations zeroinitializer, align 4
@NFPROTO_IPV4 = common dso_local global i64 0, align 8
@htable_gc = common dso_local global i32 0, align 4
@system_power_efficient_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.hashlimit_cfg3*, i8*, i64, %struct.xt_hashlimit_htable**, i32)* @htable_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htable_create(%struct.net* %0, %struct.hashlimit_cfg3* %1, i8* %2, i64 %3, %struct.xt_hashlimit_htable** %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net*, align 8
  %9 = alloca %struct.hashlimit_cfg3*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.xt_hashlimit_htable**, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.hashlimit_net*, align 8
  %15 = alloca %struct.xt_hashlimit_htable*, align 8
  %16 = alloca %struct.seq_operations*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %8, align 8
  store %struct.hashlimit_cfg3* %1, %struct.hashlimit_cfg3** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.xt_hashlimit_htable** %4, %struct.xt_hashlimit_htable*** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.net*, %struct.net** %8, align 8
  %22 = call %struct.hashlimit_net* @hashlimit_pernet(%struct.net* %21)
  store %struct.hashlimit_net* %22, %struct.hashlimit_net** %14, align 8
  %23 = call i64 (...) @totalram_pages()
  store i64 %23, i64* %19, align 8
  %24 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %25 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  %29 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %30 = getelementptr inbounds %struct.hashlimit_cfg3, %struct.hashlimit_cfg3* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %17, align 4
  br label %50

32:                                               ; preds = %6
  %33 = load i64, i64* %19, align 8
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = shl i64 %33, %34
  %36 = udiv i64 %35, 16384
  %37 = udiv i64 %36, 4
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %17, align 4
  %39 = load i64, i64* %19, align 8
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = sdiv i32 1073741824, %40
  %42 = sext i32 %41 to i64
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  store i32 8192, i32* %17, align 4
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32, i32* %17, align 4
  %47 = icmp ult i32 %46, 16
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 16, i32* %17, align 4
  br label %49

49:                                               ; preds = %48, %45
  br label %50

50:                                               ; preds = %49, %28
  %51 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %52 = load i32, i32* @hash, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @struct_size(%struct.xt_hashlimit_htable* %51, i32 %52, i32 %53)
  %55 = call %struct.xt_hashlimit_htable* @vmalloc(i32 %54)
  store %struct.xt_hashlimit_htable* %55, %struct.xt_hashlimit_htable** %15, align 8
  %56 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %57 = icmp eq %struct.xt_hashlimit_htable* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %219

61:                                               ; preds = %50
  %62 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %63 = load %struct.xt_hashlimit_htable**, %struct.xt_hashlimit_htable*** %12, align 8
  store %struct.xt_hashlimit_htable* %62, %struct.xt_hashlimit_htable** %63, align 8
  %64 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %65 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %64, i32 0, i32 3
  %66 = load %struct.hashlimit_cfg3*, %struct.hashlimit_cfg3** %9, align 8
  %67 = bitcast %struct.hashlimit_cfg3* %66 to i8*
  %68 = call i32 @cfg_copy(%struct.TYPE_2__* %65, i8* %67, i32 3)
  store i32 %68, i32* %20, align 4
  %69 = load i32, i32* %20, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %61
  %72 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %73 = call i32 @vfree(%struct.xt_hashlimit_htable* %72)
  %74 = load i32, i32* %20, align 4
  store i32 %74, i32* %7, align 4
  br label %219

75:                                               ; preds = %61
  %76 = load i32, i32* %17, align 4
  %77 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %78 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %81 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %75
  %86 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %87 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = mul i32 8, %89
  %91 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %92 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  br label %113

94:                                               ; preds = %75
  %95 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %96 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %100 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ult i32 %98, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %94
  %105 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %106 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %110 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  br label %112

112:                                              ; preds = %104, %94
  br label %113

113:                                              ; preds = %112, %85
  store i32 0, i32* %18, align 4
  br label %114

114:                                              ; preds = %129, %113
  %115 = load i32, i32* %18, align 4
  %116 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %117 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ult i32 %115, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %114
  %122 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %123 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %122, i32 0, i32 11
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %18, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = call i32 @INIT_HLIST_HEAD(i32* %127)
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %18, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %18, align 4
  br label %114

132:                                              ; preds = %114
  %133 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %134 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %136 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %135, i32 0, i32 10
  store i64 0, i64* %136, align 8
  %137 = load i64, i64* %11, align 8
  %138 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %139 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %138, i32 0, i32 9
  store i64 %137, i64* %139, align 8
  %140 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %141 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %140, i32 0, i32 1
  store i32 0, i32* %141, align 4
  %142 = load i8*, i8** %10, align 8
  %143 = load i32, i32* @GFP_KERNEL, align 4
  %144 = call i32 @kstrdup(i8* %142, i32 %143)
  %145 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %146 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %145, i32 0, i32 6
  store i32 %144, i32* %146, align 8
  %147 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %148 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %156, label %151

151:                                              ; preds = %132
  %152 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %153 = call i32 @vfree(%struct.xt_hashlimit_htable* %152)
  %154 = load i32, i32* @ENOMEM, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %7, align 4
  br label %219

156:                                              ; preds = %132
  %157 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %158 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %157, i32 0, i32 8
  %159 = call i32 @spin_lock_init(i32* %158)
  %160 = load i32, i32* %13, align 4
  switch i32 %160, label %163 [
    i32 1, label %161
    i32 2, label %162
  ]

161:                                              ; preds = %156
  store %struct.seq_operations* @dl_seq_ops_v1, %struct.seq_operations** %16, align 8
  br label %164

162:                                              ; preds = %156
  store %struct.seq_operations* @dl_seq_ops_v2, %struct.seq_operations** %16, align 8
  br label %164

163:                                              ; preds = %156
  store %struct.seq_operations* @dl_seq_ops, %struct.seq_operations** %16, align 8
  br label %164

164:                                              ; preds = %163, %162, %161
  %165 = load i8*, i8** %10, align 8
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* @NFPROTO_IPV4, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load %struct.hashlimit_net*, %struct.hashlimit_net** %14, align 8
  %171 = getelementptr inbounds %struct.hashlimit_net, %struct.hashlimit_net* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  br label %177

173:                                              ; preds = %164
  %174 = load %struct.hashlimit_net*, %struct.hashlimit_net** %14, align 8
  %175 = getelementptr inbounds %struct.hashlimit_net, %struct.hashlimit_net* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  br label %177

177:                                              ; preds = %173, %169
  %178 = phi i32 [ %172, %169 ], [ %176, %173 ]
  %179 = load %struct.seq_operations*, %struct.seq_operations** %16, align 8
  %180 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %181 = call i32* @proc_create_seq_data(i8* %165, i32 0, i32 %178, %struct.seq_operations* %179, %struct.xt_hashlimit_htable* %180)
  %182 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %183 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %182, i32 0, i32 7
  store i32* %181, i32** %183, align 8
  %184 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %185 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %184, i32 0, i32 7
  %186 = load i32*, i32** %185, align 8
  %187 = icmp eq i32* %186, null
  br i1 %187, label %188, label %197

188:                                              ; preds = %177
  %189 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %190 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %189, i32 0, i32 6
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @kfree(i32 %191)
  %193 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %194 = call i32 @vfree(%struct.xt_hashlimit_htable* %193)
  %195 = load i32, i32* @ENOMEM, align 4
  %196 = sub nsw i32 0, %195
  store i32 %196, i32* %7, align 4
  br label %219

197:                                              ; preds = %177
  %198 = load %struct.net*, %struct.net** %8, align 8
  %199 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %200 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %199, i32 0, i32 5
  store %struct.net* %198, %struct.net** %200, align 8
  %201 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %202 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %201, i32 0, i32 4
  %203 = load i32, i32* @htable_gc, align 4
  %204 = call i32 @INIT_DEFERRABLE_WORK(i32* %202, i32 %203)
  %205 = load i32, i32* @system_power_efficient_wq, align 4
  %206 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %207 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %206, i32 0, i32 4
  %208 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %209 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @msecs_to_jiffies(i32 %211)
  %213 = call i32 @queue_delayed_work(i32 %205, i32* %207, i32 %212)
  %214 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %15, align 8
  %215 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %214, i32 0, i32 2
  %216 = load %struct.hashlimit_net*, %struct.hashlimit_net** %14, align 8
  %217 = getelementptr inbounds %struct.hashlimit_net, %struct.hashlimit_net* %216, i32 0, i32 0
  %218 = call i32 @hlist_add_head(i32* %215, i32* %217)
  store i32 0, i32* %7, align 4
  br label %219

219:                                              ; preds = %197, %188, %151, %71, %58
  %220 = load i32, i32* %7, align 4
  ret i32 %220
}

declare dso_local %struct.hashlimit_net* @hashlimit_pernet(%struct.net*) #1

declare dso_local i64 @totalram_pages(...) #1

declare dso_local %struct.xt_hashlimit_htable* @vmalloc(i32) #1

declare dso_local i32 @struct_size(%struct.xt_hashlimit_htable*, i32, i32) #1

declare dso_local i32 @cfg_copy(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @vfree(%struct.xt_hashlimit_htable*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @proc_create_seq_data(i8*, i32, i32, %struct.seq_operations*, %struct.xt_hashlimit_htable*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @INIT_DEFERRABLE_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
