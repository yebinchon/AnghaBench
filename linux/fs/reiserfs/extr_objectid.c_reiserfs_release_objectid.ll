; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_objectid.c_reiserfs_release_objectid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_objectid.c_reiserfs_release_objectid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.reiserfs_super_block = type { i32 }

@.str = private unnamed_addr constant [60 x i8] c"vs-15005: objectid map corrupted cur_size == %d (max == %d)\00", align 1
@leaked_oid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"vs-15011\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"tried to free free object id (%lu)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_release_objectid(%struct.reiserfs_transaction_handle* %0, i64 %1) #0 {
  %3 = alloca %struct.reiserfs_transaction_handle*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.reiserfs_super_block*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %10 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %9, i32 0, i32 1
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block* %12)
  store %struct.reiserfs_super_block* %13, %struct.reiserfs_super_block** %6, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %16 = call i64* @objectid_map(%struct.super_block* %14, %struct.reiserfs_super_block* %15)
  store i64* %16, i64** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %18 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.super_block*, %struct.super_block** %5, align 8
  %25 = load i64*, i64** %7, align 8
  %26 = call i32 @check_objectid_map(%struct.super_block* %24, i64* %25)
  %27 = load %struct.super_block*, %struct.super_block** %5, align 8
  %28 = load %struct.super_block*, %struct.super_block** %5, align 8
  %29 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %28)
  %30 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %27, i32 %29, i32 1)
  %31 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %32)
  %34 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %31, i32 %33)
  br label %35

35:                                               ; preds = %196, %2
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %38 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %37)
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %199

40:                                               ; preds = %35
  %41 = load i64, i64* %4, align 8
  %42 = load i64*, i64** %7, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @le32_to_cpu(i64 %46)
  %48 = icmp eq i64 %41, %47
  br i1 %48, label %49, label %109

49:                                               ; preds = %40
  %50 = load i64*, i64** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = call i32 @le32_add_cpu(i64* %53, i32 1)
  %55 = load i64*, i64** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %55, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %60, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %59, %65
  br i1 %66, label %67, label %108

67:                                               ; preds = %49
  %68 = load i64*, i64** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i64, i64* %68, i64 %70
  %72 = load i64*, i64** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = getelementptr inbounds i64, i64* %75, i64 2
  %77 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %78 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %77)
  %79 = load i32, i32* %8, align 4
  %80 = sub nsw i32 %78, %79
  %81 = sub nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 8
  %84 = trunc i64 %83 to i32
  %85 = call i32 @memmove(i64* %71, i64* %76, i32 %84)
  %86 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %87 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %88 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %87)
  %89 = sub nsw i32 %88, 2
  %90 = call i32 @set_sb_oid_cursize(%struct.reiserfs_super_block* %86, i32 %89)
  %91 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %92 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %91)
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %100, label %94

94:                                               ; preds = %67
  %95 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %96 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %95)
  %97 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %98 = call i32 @sb_oid_maxsize(%struct.reiserfs_super_block* %97)
  %99 = icmp sgt i32 %96, %98
  br label %100

100:                                              ; preds = %94, %67
  %101 = phi i1 [ true, %67 ], [ %99, %94 ]
  %102 = zext i1 %101 to i32
  %103 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %104 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %103)
  %105 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %106 = call i32 @sb_oid_maxsize(%struct.reiserfs_super_block* %105)
  %107 = call i32 @RFALSE(i32 %102, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %106)
  br label %108

108:                                              ; preds = %100, %49
  br label %203

109:                                              ; preds = %40
  %110 = load i64, i64* %4, align 8
  %111 = load i64*, i64** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @le32_to_cpu(i64 %115)
  %117 = icmp sgt i64 %110, %116
  br i1 %117, label %118, label %196

118:                                              ; preds = %109
  %119 = load i64, i64* %4, align 8
  %120 = load i64*, i64** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %120, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @le32_to_cpu(i64 %125)
  %127 = icmp slt i64 %119, %126
  br i1 %127, label %128, label %196

128:                                              ; preds = %118
  %129 = load i64, i64* %4, align 8
  %130 = add nsw i64 %129, 1
  %131 = load i64*, i64** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %131, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = call i64 @le32_to_cpu(i64 %136)
  %138 = icmp eq i64 %130, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %128
  %140 = load i64*, i64** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %140, i64 %143
  %145 = call i32 @le32_add_cpu(i64* %144, i32 -1)
  br label %203

146:                                              ; preds = %128
  %147 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %148 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %147)
  %149 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %150 = call i32 @sb_oid_maxsize(%struct.reiserfs_super_block* %149)
  %151 = icmp eq i32 %148, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load %struct.super_block*, %struct.super_block** %5, align 8
  %154 = load i32, i32* @leaked_oid, align 4
  %155 = call i32 @PROC_INFO_INC(%struct.super_block* %153, i32 %154)
  br label %203

156:                                              ; preds = %146
  %157 = load i64*, i64** %7, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = getelementptr inbounds i64, i64* %160, i64 3
  %162 = load i64*, i64** %7, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = getelementptr inbounds i64, i64* %165, i64 1
  %167 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %168 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %167)
  %169 = load i32, i32* %8, align 4
  %170 = sub nsw i32 %168, %169
  %171 = sub nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = mul i64 %172, 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @memmove(i64* %161, i64* %166, i32 %174)
  %176 = load i64, i64* %4, align 8
  %177 = call i64 @cpu_to_le32(i64 %176)
  %178 = load i64*, i64** %7, align 8
  %179 = load i32, i32* %8, align 4
  %180 = add nsw i32 %179, 1
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i64, i64* %178, i64 %181
  store i64 %177, i64* %182, align 8
  %183 = load i64, i64* %4, align 8
  %184 = add nsw i64 %183, 1
  %185 = call i64 @cpu_to_le32(i64 %184)
  %186 = load i64*, i64** %7, align 8
  %187 = load i32, i32* %8, align 4
  %188 = add nsw i32 %187, 2
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i64, i64* %186, i64 %189
  store i64 %185, i64* %190, align 8
  %191 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %192 = load %struct.reiserfs_super_block*, %struct.reiserfs_super_block** %6, align 8
  %193 = call i32 @sb_oid_cursize(%struct.reiserfs_super_block* %192)
  %194 = add nsw i32 %193, 2
  %195 = call i32 @set_sb_oid_cursize(%struct.reiserfs_super_block* %191, i32 %194)
  br label %203

196:                                              ; preds = %118, %109
  %197 = load i32, i32* %8, align 4
  %198 = add nsw i32 %197, 2
  store i32 %198, i32* %8, align 4
  br label %35

199:                                              ; preds = %35
  %200 = load %struct.super_block*, %struct.super_block** %5, align 8
  %201 = load i64, i64* %4, align 8
  %202 = call i32 @reiserfs_error(%struct.super_block* %200, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %201)
  br label %203

203:                                              ; preds = %199, %156, %152, %139, %108
  ret void
}

declare dso_local %struct.reiserfs_super_block* @SB_DISK_SUPER_BLOCK(%struct.super_block*) #1

declare dso_local i64* @objectid_map(%struct.super_block*, %struct.reiserfs_super_block*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @check_objectid_map(%struct.super_block*, i64*) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i32 @sb_oid_cursize(%struct.reiserfs_super_block*) #1

declare dso_local i64 @le32_to_cpu(i64) #1

declare dso_local i32 @le32_add_cpu(i64*, i32) #1

declare dso_local i32 @memmove(i64*, i64*, i32) #1

declare dso_local i32 @set_sb_oid_cursize(%struct.reiserfs_super_block*, i32) #1

declare dso_local i32 @RFALSE(i32, i8*, i32, i32) #1

declare dso_local i32 @sb_oid_maxsize(%struct.reiserfs_super_block*) #1

declare dso_local i32 @PROC_INFO_INC(%struct.super_block*, i32) #1

declare dso_local i64 @cpu_to_le32(i64) #1

declare dso_local i32 @reiserfs_error(%struct.super_block*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
