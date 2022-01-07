; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_dedup_new.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_btf.c_btf_dedup_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btf_dedup = type { i32*, i8**, %struct.btf*, i32*, %struct.btf_ext*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.btf = type { i32, %struct.btf_type** }
%struct.btf_type = type { i32 }
%struct.btf_ext = type { i32 }
%struct.btf_dedup_opts = type { i32, i64 }

@btf_dedup_identity_hash_fn = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btf_dedup_collision_hash_fn = common dso_local global i32 0, align 4
@btf_dedup_equal_fn = common dso_local global i32 0, align 4
@BTF_UNPROCESSED_ID = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btf_dedup* (%struct.btf*, %struct.btf_ext*, %struct.btf_dedup_opts*)* @btf_dedup_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btf_dedup* @btf_dedup_new(%struct.btf* %0, %struct.btf_ext* %1, %struct.btf_dedup_opts* %2) #0 {
  %4 = alloca %struct.btf_dedup*, align 8
  %5 = alloca %struct.btf*, align 8
  %6 = alloca %struct.btf_ext*, align 8
  %7 = alloca %struct.btf_dedup_opts*, align 8
  %8 = alloca %struct.btf_dedup*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btf_type*, align 8
  store %struct.btf* %0, %struct.btf** %5, align 8
  store %struct.btf_ext* %1, %struct.btf_ext** %6, align 8
  store %struct.btf_dedup_opts* %2, %struct.btf_dedup_opts** %7, align 8
  %13 = call %struct.btf_dedup* @calloc(i32 1, i32 48)
  store %struct.btf_dedup* %13, %struct.btf_dedup** %8, align 8
  %14 = load i32, i32* @btf_dedup_identity_hash_fn, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %16 = icmp ne %struct.btf_dedup* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.btf_dedup* @ERR_PTR(i32 %19)
  store %struct.btf_dedup* %20, %struct.btf_dedup** %4, align 8
  br label %184

21:                                               ; preds = %3
  %22 = load %struct.btf_dedup_opts*, %struct.btf_dedup_opts** %7, align 8
  %23 = icmp ne %struct.btf_dedup_opts* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load %struct.btf_dedup_opts*, %struct.btf_dedup_opts** %7, align 8
  %26 = getelementptr inbounds %struct.btf_dedup_opts, %struct.btf_dedup_opts* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %24, %21
  %30 = phi i1 [ false, %21 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %33 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load %struct.btf_dedup_opts*, %struct.btf_dedup_opts** %7, align 8
  %36 = icmp ne %struct.btf_dedup_opts* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %29
  %38 = load %struct.btf_dedup_opts*, %struct.btf_dedup_opts** %7, align 8
  %39 = getelementptr inbounds %struct.btf_dedup_opts, %struct.btf_dedup_opts* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @btf_dedup_collision_hash_fn, align 4
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %42, %37, %29
  %45 = load %struct.btf*, %struct.btf** %5, align 8
  %46 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %47 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %46, i32 0, i32 2
  store %struct.btf* %45, %struct.btf** %47, align 8
  %48 = load %struct.btf_ext*, %struct.btf_ext** %6, align 8
  %49 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %50 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %49, i32 0, i32 4
  store %struct.btf_ext* %48, %struct.btf_ext** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @btf_dedup_equal_fn, align 4
  %53 = call i32* @hashmap__new(i32 %51, i32 %52, i32* null)
  %54 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %55 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %54, i32 0, i32 3
  store i32* %53, i32** %55, align 8
  %56 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %57 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i64 @IS_ERR(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %44
  %62 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %63 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @PTR_ERR(i32* %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %67 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %66, i32 0, i32 3
  store i32* null, i32** %67, align 8
  br label %174

68:                                               ; preds = %44
  %69 = load %struct.btf*, %struct.btf** %5, align 8
  %70 = getelementptr inbounds %struct.btf, %struct.btf* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 1, %71
  %73 = sext i32 %72 to i64
  %74 = mul i64 4, %73
  %75 = trunc i64 %74 to i32
  %76 = call i8* @malloc(i32 %75)
  %77 = bitcast i8* %76 to i32*
  %78 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %79 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %78, i32 0, i32 0
  store i32* %77, i32** %79, align 8
  %80 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %81 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %87, label %84

84:                                               ; preds = %68
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %11, align 4
  br label %174

87:                                               ; preds = %68
  %88 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %89 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 0, i32* %91, align 4
  store i32 1, i32* %10, align 4
  br label %92

92:                                               ; preds = %133, %87
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.btf*, %struct.btf** %5, align 8
  %95 = getelementptr inbounds %struct.btf, %struct.btf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sle i32 %93, %96
  br i1 %97, label %98, label %136

98:                                               ; preds = %92
  %99 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %100 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %99, i32 0, i32 2
  %101 = load %struct.btf*, %struct.btf** %100, align 8
  %102 = getelementptr inbounds %struct.btf, %struct.btf* %101, i32 0, i32 1
  %103 = load %struct.btf_type**, %struct.btf_type*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.btf_type*, %struct.btf_type** %103, i64 %105
  %107 = load %struct.btf_type*, %struct.btf_type** %106, align 8
  store %struct.btf_type* %107, %struct.btf_type** %12, align 8
  %108 = load %struct.btf_type*, %struct.btf_type** %12, align 8
  %109 = call i64 @btf_is_var(%struct.btf_type* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %98
  %112 = load %struct.btf_type*, %struct.btf_type** %12, align 8
  %113 = call i64 @btf_is_datasec(%struct.btf_type* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %111, %98
  %116 = load i32, i32* %10, align 4
  %117 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %118 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  br label %132

123:                                              ; preds = %111
  %124 = load i8*, i8** @BTF_UNPROCESSED_ID, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %127 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  br label %132

132:                                              ; preds = %123, %115
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %10, align 4
  br label %92

136:                                              ; preds = %92
  %137 = load %struct.btf*, %struct.btf** %5, align 8
  %138 = getelementptr inbounds %struct.btf, %struct.btf* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 1, %139
  %141 = sext i32 %140 to i64
  %142 = mul i64 4, %141
  %143 = trunc i64 %142 to i32
  %144 = call i8* @malloc(i32 %143)
  %145 = bitcast i8* %144 to i8**
  %146 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %147 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %146, i32 0, i32 1
  store i8** %145, i8*** %147, align 8
  %148 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %149 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %148, i32 0, i32 1
  %150 = load i8**, i8*** %149, align 8
  %151 = icmp ne i8** %150, null
  br i1 %151, label %155, label %152

152:                                              ; preds = %136
  %153 = load i32, i32* @ENOMEM, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %11, align 4
  br label %174

155:                                              ; preds = %136
  store i32 0, i32* %10, align 4
  br label %156

156:                                              ; preds = %170, %155
  %157 = load i32, i32* %10, align 4
  %158 = load %struct.btf*, %struct.btf** %5, align 8
  %159 = getelementptr inbounds %struct.btf, %struct.btf* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp sle i32 %157, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load i8*, i8** @BTF_UNPROCESSED_ID, align 8
  %164 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %165 = getelementptr inbounds %struct.btf_dedup, %struct.btf_dedup* %164, i32 0, i32 1
  %166 = load i8**, i8*** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8*, i8** %166, i64 %168
  store i8* %163, i8** %169, align 8
  br label %170

170:                                              ; preds = %162
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %156

173:                                              ; preds = %156
  br label %174

174:                                              ; preds = %173, %152, %84, %61
  %175 = load i32, i32* %11, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  %179 = call i32 @btf_dedup_free(%struct.btf_dedup* %178)
  %180 = load i32, i32* %11, align 4
  %181 = call %struct.btf_dedup* @ERR_PTR(i32 %180)
  store %struct.btf_dedup* %181, %struct.btf_dedup** %4, align 8
  br label %184

182:                                              ; preds = %174
  %183 = load %struct.btf_dedup*, %struct.btf_dedup** %8, align 8
  store %struct.btf_dedup* %183, %struct.btf_dedup** %4, align 8
  br label %184

184:                                              ; preds = %182, %177, %17
  %185 = load %struct.btf_dedup*, %struct.btf_dedup** %4, align 8
  ret %struct.btf_dedup* %185
}

declare dso_local %struct.btf_dedup* @calloc(i32, i32) #1

declare dso_local %struct.btf_dedup* @ERR_PTR(i32) #1

declare dso_local i32* @hashmap__new(i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @btf_is_var(%struct.btf_type*) #1

declare dso_local i64 @btf_is_datasec(%struct.btf_type*) #1

declare dso_local i32 @btf_dedup_free(%struct.btf_dedup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
