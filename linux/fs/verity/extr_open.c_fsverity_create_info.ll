; ModuleID = '/home/carl/AnghaBench/linux/fs/verity/extr_open.c_fsverity_create_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/verity/extr_open.c_fsverity_create_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsverity_info = type { i32, %struct.TYPE_3__, i32, %struct.inode* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.fsverity_descriptor = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"Unrecognized descriptor size: %zu bytes\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unrecognized descriptor version: %u\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Reserved bits set in descriptor\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Invalid salt_size: %u\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"Wrong data_size: %llu (desc) != %lld (inode)\00", align 1
@fsverity_info_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [45 x i8] c"Error %d initializing Merkle tree parameters\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Error %d computing file measurement\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Computed file measurement: %s:%*phN\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fsverity_info* @fsverity_create_info(%struct.inode* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.fsverity_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.fsverity_descriptor*, align 8
  %9 = alloca %struct.fsverity_info*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.fsverity_descriptor*
  store %struct.fsverity_descriptor* %12, %struct.fsverity_descriptor** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %13, 32
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 (%struct.inode*, i8*, ...) @fsverity_err(%struct.inode* %16, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.fsverity_info* @ERR_PTR(i32 %20)
  store %struct.fsverity_info* %21, %struct.fsverity_info** %4, align 8
  br label %177

22:                                               ; preds = %3
  %23 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %24 = getelementptr inbounds %struct.fsverity_descriptor, %struct.fsverity_descriptor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %30 = getelementptr inbounds %struct.fsverity_descriptor, %struct.fsverity_descriptor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.inode*, i8*, ...) @fsverity_err(%struct.inode* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  %35 = call %struct.fsverity_info* @ERR_PTR(i32 %34)
  store %struct.fsverity_info* %35, %struct.fsverity_info** %4, align 8
  br label %177

36:                                               ; preds = %22
  %37 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %38 = getelementptr inbounds %struct.fsverity_descriptor, %struct.fsverity_descriptor* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @memchr_inv(i32 %39, i32 0, i32 4)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = call i32 (%struct.inode*, i8*, ...) @fsverity_err(%struct.inode* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.fsverity_info* @ERR_PTR(i32 %46)
  store %struct.fsverity_info* %47, %struct.fsverity_info** %4, align 8
  br label %177

48:                                               ; preds = %36
  %49 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %50 = getelementptr inbounds %struct.fsverity_descriptor, %struct.fsverity_descriptor* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ugt i64 %52, 4
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %57 = getelementptr inbounds %struct.fsverity_descriptor, %struct.fsverity_descriptor* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (%struct.inode*, i8*, ...) @fsverity_err(%struct.inode* %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.fsverity_info* @ERR_PTR(i32 %61)
  store %struct.fsverity_info* %62, %struct.fsverity_info** %4, align 8
  br label %177

63:                                               ; preds = %48
  %64 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %65 = getelementptr inbounds %struct.fsverity_descriptor, %struct.fsverity_descriptor* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le64_to_cpu(i32 %66)
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %63
  %73 = load %struct.inode*, %struct.inode** %5, align 8
  %74 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %75 = getelementptr inbounds %struct.fsverity_descriptor, %struct.fsverity_descriptor* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le64_to_cpu(i32 %76)
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.inode*, i8*, ...) @fsverity_err(%struct.inode* %73, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  %84 = call %struct.fsverity_info* @ERR_PTR(i32 %83)
  store %struct.fsverity_info* %84, %struct.fsverity_info** %4, align 8
  br label %177

85:                                               ; preds = %63
  %86 = load i32, i32* @fsverity_info_cachep, align 4
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.fsverity_info* @kmem_cache_zalloc(i32 %86, i32 %87)
  store %struct.fsverity_info* %88, %struct.fsverity_info** %9, align 8
  %89 = load %struct.fsverity_info*, %struct.fsverity_info** %9, align 8
  %90 = icmp ne %struct.fsverity_info* %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  %94 = call %struct.fsverity_info* @ERR_PTR(i32 %93)
  store %struct.fsverity_info* %94, %struct.fsverity_info** %4, align 8
  br label %177

95:                                               ; preds = %85
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = load %struct.fsverity_info*, %struct.fsverity_info** %9, align 8
  %98 = getelementptr inbounds %struct.fsverity_info, %struct.fsverity_info* %97, i32 0, i32 3
  store %struct.inode* %96, %struct.inode** %98, align 8
  %99 = load %struct.fsverity_info*, %struct.fsverity_info** %9, align 8
  %100 = getelementptr inbounds %struct.fsverity_info, %struct.fsverity_info* %99, i32 0, i32 1
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %103 = getelementptr inbounds %struct.fsverity_descriptor, %struct.fsverity_descriptor* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %106 = getelementptr inbounds %struct.fsverity_descriptor, %struct.fsverity_descriptor* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %109 = getelementptr inbounds %struct.fsverity_descriptor, %struct.fsverity_descriptor* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %112 = getelementptr inbounds %struct.fsverity_descriptor, %struct.fsverity_descriptor* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @fsverity_init_merkle_tree_params(%struct.TYPE_3__* %100, %struct.inode* %101, i32 %104, i32 %107, i32 %110, i32 %113)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %95
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = load i32, i32* %10, align 4
  %120 = call i32 (%struct.inode*, i8*, ...) @fsverity_err(%struct.inode* %118, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %119)
  br label %167

121:                                              ; preds = %95
  %122 = load %struct.fsverity_info*, %struct.fsverity_info** %9, align 8
  %123 = getelementptr inbounds %struct.fsverity_info, %struct.fsverity_info* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %126 = getelementptr inbounds %struct.fsverity_descriptor, %struct.fsverity_descriptor* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.fsverity_info*, %struct.fsverity_info** %9, align 8
  %129 = getelementptr inbounds %struct.fsverity_info, %struct.fsverity_info* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @memcpy(i32 %124, i32 %127, i32 %131)
  %133 = load %struct.fsverity_info*, %struct.fsverity_info** %9, align 8
  %134 = getelementptr inbounds %struct.fsverity_info, %struct.fsverity_info* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %138 = load %struct.fsverity_info*, %struct.fsverity_info** %9, align 8
  %139 = getelementptr inbounds %struct.fsverity_info, %struct.fsverity_info* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @compute_file_measurement(%struct.TYPE_4__* %136, %struct.fsverity_descriptor* %137, i32 %140)
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %121
  %145 = load %struct.inode*, %struct.inode** %5, align 8
  %146 = load i32, i32* %10, align 4
  %147 = call i32 (%struct.inode*, i8*, ...) @fsverity_err(%struct.inode* %145, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %146)
  br label %167

148:                                              ; preds = %121
  %149 = load %struct.fsverity_info*, %struct.fsverity_info** %9, align 8
  %150 = getelementptr inbounds %struct.fsverity_info, %struct.fsverity_info* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.fsverity_info*, %struct.fsverity_info** %9, align 8
  %156 = getelementptr inbounds %struct.fsverity_info, %struct.fsverity_info* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.fsverity_info*, %struct.fsverity_info** %9, align 8
  %160 = getelementptr inbounds %struct.fsverity_info, %struct.fsverity_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %154, i32 %158, i32 %161)
  %163 = load %struct.fsverity_info*, %struct.fsverity_info** %9, align 8
  %164 = load %struct.fsverity_descriptor*, %struct.fsverity_descriptor** %8, align 8
  %165 = load i64, i64* %7, align 8
  %166 = call i32 @fsverity_verify_signature(%struct.fsverity_info* %163, %struct.fsverity_descriptor* %164, i64 %165)
  store i32 %166, i32* %10, align 4
  br label %167

167:                                              ; preds = %148, %144, %117
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %167
  %171 = load %struct.fsverity_info*, %struct.fsverity_info** %9, align 8
  %172 = call i32 @fsverity_free_info(%struct.fsverity_info* %171)
  %173 = load i32, i32* %10, align 4
  %174 = call %struct.fsverity_info* @ERR_PTR(i32 %173)
  store %struct.fsverity_info* %174, %struct.fsverity_info** %9, align 8
  br label %175

175:                                              ; preds = %170, %167
  %176 = load %struct.fsverity_info*, %struct.fsverity_info** %9, align 8
  store %struct.fsverity_info* %176, %struct.fsverity_info** %4, align 8
  br label %177

177:                                              ; preds = %175, %91, %72, %54, %42, %27, %15
  %178 = load %struct.fsverity_info*, %struct.fsverity_info** %4, align 8
  ret %struct.fsverity_info* %178
}

declare dso_local i32 @fsverity_err(%struct.inode*, i8*, ...) #1

declare dso_local %struct.fsverity_info* @ERR_PTR(i32) #1

declare dso_local i64 @memchr_inv(i32, i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.fsverity_info* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @fsverity_init_merkle_tree_params(%struct.TYPE_3__*, %struct.inode*, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @compute_file_measurement(%struct.TYPE_4__*, %struct.fsverity_descriptor*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

declare dso_local i32 @fsverity_verify_signature(%struct.fsverity_info*, %struct.fsverity_descriptor*, i64) #1

declare dso_local i32 @fsverity_free_info(%struct.fsverity_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
